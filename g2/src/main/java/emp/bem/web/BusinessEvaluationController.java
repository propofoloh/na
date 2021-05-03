package emp.bem.web;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import emp.bam.service.BusinessAnnouncementService;
import emp.bem.service.BusinessEvaluationService;
import emp.bem.util.PageMaker;
import emp.bem.util.SearchCriteria;
import emp.bem.vo.BusinessEvaluationVO;
import emp.bpm.service.BusinessPlanService;
import emp.cmm.vo.MemberVO;



@Controller
@RequestMapping("/bem")
public class BusinessEvaluationController {

	private static final Logger logger = LoggerFactory.getLogger(BusinessEvaluationController.class);

	@Inject
	BusinessEvaluationService service;
	
	@Inject
	BusinessPlanService planService;
	
	@Inject
	BusinessAnnouncementService ancService;


	//사업계획서 평가지표 목록 조회
	@RequestMapping(value = "/businessEvaluationList", method = RequestMethod.GET)
	public String evaluationList(Model model, @RequestParam("bpm_bplan_idx") int bpm_bplan_idx, @ModelAttribute("scri") SearchCriteria scri, RedirectAttributes redirect) throws Exception{
		logger.info("businessEvaluationList");

		Map<String, Integer> paramMap = new HashMap<String, Integer>();
		paramMap.put("rowStart", scri.getRowStart());
		paramMap.put("rowEnd", scri.getRowEnd());
		paramMap.put("bpm_bplan_idx",bpm_bplan_idx);
		model.addAttribute("businessEvaluationList", service.businessEvaluationList(paramMap));
		redirect.addAttribute("bpm_bplan_idx",bpm_bplan_idx);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(service.listCount(scri));

		model.addAttribute("pageMaker", pageMaker);

		return "bem/businessEvaluationList";

	}
	
	@RequestMapping(value = "/businessEvaluationMyList", method = RequestMethod.GET)
	public String businessEvaluationMyList(Model model,@SessionAttribute("member") MemberVO member, @ModelAttribute("scri") SearchCriteria scri, RedirectAttributes redirect) throws Exception{
		logger.info("businessEvaluationList");
		
		String user_id = member.getUser_id();
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("rowStart", scri.getRowStart());
		paramMap.put("rowEnd", scri.getRowEnd());
		paramMap.put("user_id",user_id);
		model.addAttribute("businessEvaluationList", service.businessEvaluationMyList(paramMap));

		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(service.listCount(scri));

		model.addAttribute("pageMaker", pageMaker);

		return "bem/businessEvaluationList";

	}

	//사업계획서 평가지표 등록
	@RequestMapping(value = "/businessEvaluation", method = RequestMethod.GET)
	public String businessEvaluationview(Model model, @RequestParam("bam_anc_idx") int bam_anc_idx,@RequestParam("bpm_bplan_idx") int bpm_bplan_idx ) throws Exception{
		logger.info("businessEvaluation");
		System.out.println("bamidx"+bam_anc_idx);
		System.out.println("bpm_bplan_idx"+bpm_bplan_idx);
		model.addAttribute("ancInfo",service.businessEvaluationFormList(bam_anc_idx));
		return "bem/businessEvaluation";
	}
	
	//사업계획서 등록 서비스실행
	@RequestMapping(value = "/businessEvaluation", method = RequestMethod.POST)
	public String businessEvaluation(@RequestParam("bpm_bplan_idx") int bpm_bplan_idx, BusinessEvaluationVO businessEvaluationVO ,RedirectAttributes redirect) throws Exception {
		logger.info("businessEvaluation");
		
		
		service.businessEvaluation(businessEvaluationVO);
		redirect.addAttribute("bpm_bplan_idx", bpm_bplan_idx);
		return "redirect:/bem/businessEvaluationList";
	}
	
	//사업계획서 평가지표 상세 조회
		@RequestMapping(value = "/businessEvaluationDetail", method = RequestMethod.GET)
		public void businessEvaluationDetail(BusinessEvaluationVO businessEvaluationVO, Model model,@RequestParam("bpm_bplan_idx") int bpm_bplan_idx) throws Exception{
			
			model.addAttribute("read", service.businessEvaluationDetail(businessEvaluationVO.getBem_beval_idx()));
			model.addAttribute("Bplan", planService.businessPlanApplyDetail(bpm_bplan_idx));
			
		}
		//사업계획서 평가지표 수정 뷰
		@RequestMapping(value = "/businessEvaluationUpdate", method = RequestMethod.GET)
		public void businessEvaluationUpdateView(BusinessEvaluationVO businessEvaluationVO, Model model, @ModelAttribute("scri") SearchCriteria scri) throws Exception{
			
			model.addAttribute("read", service.businessEvaluationDetail(businessEvaluationVO.getBem_beval_idx()));
			
		}
		//사업계획서 평가지표 수정
		@RequestMapping(value = "/businessEvaluationUpdate", method = RequestMethod.POST)
		public String businessEvaluationUpdate(@RequestParam("bpm_bplan_idx") int bpm_bplan_idx,@RequestParam("bem_beval_idx") int bem_beval_idx,BusinessEvaluationVO businessEvaluationVO,Model model) throws Exception{
			
			service.businessEvaluationUpdate(businessEvaluationVO);
			
			return "redirect:/bem/businessEvaluationList?bpm_bplan_idx="+bpm_bplan_idx;
			
		}


	//사업계획서 종합의견 조회
	@RequestMapping(value = "/businessEvaluationOpinion", method = RequestMethod.GET)
	public String opinion(Model model, @ModelAttribute("scri") SearchCriteria scri,@RequestParam("bpm_bplan_idx") int bpm_bplan_idx) throws Exception{
		logger.info("businessEvaluationOpinion");
		
		Map<String, Integer> paramMap = new HashMap<String, Integer>();
		paramMap.put("rowStart", scri.getRowStart());
		paramMap.put("rowEnd", scri.getRowEnd());
		paramMap.put("bpm_bplan_idx",bpm_bplan_idx);
		model.addAttribute("businessEvaluationList", service.businessEvaluationList(paramMap));
		
		return "bem/businessEvaluationOpinion";
	}


}