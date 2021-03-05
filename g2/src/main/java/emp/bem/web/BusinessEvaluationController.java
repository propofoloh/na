package emp.bem.web;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import a.b.service.BoardService;
import a.b.service.ReplyService;
import a.b.vo.PageMaker;
import a.b.vo.SearchCriteria;

@Controller
@RequestMapping("/bem")
public class BusinessEvaluationController {

	private static final Logger logger = LoggerFactory.getLogger(BusinessEvaluationController.class);

	@Inject
	BoardService service;

	@Inject
	ReplyService replyService;

	//사업계획서 평가지표 목록 조회
	@RequestMapping(value = "/businessEvaluationList", method = RequestMethod.GET)
	public String evaluationList(Model model, @ModelAttribute("scri") SearchCriteria scri) throws Exception{
		logger.info("businessEvaluationList");

		model.addAttribute("evaluationList", service.receipList(scri));

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(service.listCount(scri));

		model.addAttribute("pageMaker", pageMaker);

		return "bam/businessEvaluationList";

	}

	//사업계획서 평가지표 등록
	@RequestMapping(value = "/businessEvaluation", method = RequestMethod.GET)
	public String evaluationScore() throws Exception{
		logger.info("businessEvaluation");

		return "bam/businessEvaluation";
	}
	
	//사업계획서 등록 서비스실행
	@RequestMapping(value = "/businessEvaluationWrite", method = RequestMethod.GET)
	public String wrigt() throws Exception{
		logger.info("evaluationScore");

		return "bam/businessEvaluationWrite";
	}
	
	//사업계획서 평가지표 상세 조회
		@RequestMapping(value = "/businessEvaluationDetail", method = RequestMethod.GET)
		public void evaluationRaitingView() throws Exception{
			logger.info("evaluationRaitingView");
		}


	//사업계획서 종합의견 조회
	@RequestMapping(value = "/businessEvaluationOpinion", method = RequestMethod.GET)
	public String opinion() throws Exception{
		logger.info("opinion");

		return "bam/businessEvaluationOpinion";
	}


}