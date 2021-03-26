package emp.bem.web;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import emp.bam.service.BusinessAnnouncementService;
import emp.bem.service.BusinessEvaluationService;
import emp.bem.util.PageMaker;
import emp.bem.util.SearchCriteria;
import emp.bem.vo.BusinessEvaluationVO;



@Controller
@RequestMapping("/bem")
public class BusinessEvaluationController {

	private static final Logger logger = LoggerFactory.getLogger(BusinessEvaluationController.class);

	@Inject
	BusinessEvaluationService service;
	
	@Inject
	BusinessAnnouncementService ancService;


	//사업계획서 평가지표 목록 조회
	@RequestMapping(value = "/businessEvaluationList", method = RequestMethod.GET)
	public String evaluationList(Model model, @ModelAttribute("scri") SearchCriteria scri) throws Exception{
		logger.info("businessEvaluationList");

		model.addAttribute("businessEvaluationList", service.businessEvaluationList(scri));

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(service.listCount(scri));

		model.addAttribute("pageMaker", pageMaker);

		return "bem/businessEvaluationList";

	}

	//사업계획서 평가지표 등록
	@RequestMapping(value = "/businessEvaluation", method = RequestMethod.GET)
	public String businessEvaluationview(Model model, @RequestParam("bam_anc_idx") int bam_anc_idx ) throws Exception{
		logger.info("businessEvaluation");
		System.out.println("bamidx"+bam_anc_idx);
		model.addAttribute("ancInfo",ancService.businessAnnouncementDetail(bam_anc_idx));
		return "bem/businessEvaluation";
	}
	
	//사업계획서 등록 서비스실행
	@RequestMapping(value = "/businessEvaluation", method = RequestMethod.POST)
	public String businessEvaluation(BusinessEvaluationVO businessEvaluationVO, MultipartHttpServletRequest mpRequest,RedirectAttributes redirect) throws Exception {
		logger.info("businessEvaluation");
		
		service.businessEvaluation(businessEvaluationVO, mpRequest);
		
		return "redirect:/bem/businessEvaluationList";
	}
	
	//사업계획서 평가지표 상세 조회
		@RequestMapping(value = "/businessEvaluationDetail", method = RequestMethod.GET)
		public void evaluationRaitingView() throws Exception{
			logger.info("businessEvaluationDetail");
		}


	//사업계획서 종합의견 조회
	@RequestMapping(value = "/businessEvaluationOpinion", method = RequestMethod.GET)
	public String opinion() throws Exception{
		logger.info("businessEvaluationOpinion");

		return "bem/businessEvaluationOpinion";
	}


}