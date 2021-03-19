package emp.bpm.web;

import java.io.File;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;

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

import emp.bpm.service.BusinessPlanService;
import emp.bpm.util.PageMaker;
import emp.bpm.util.SearchCriteria;
import emp.bpm.vo.BusinessPlanVO;

@Controller
@RequestMapping("/bpm")
public class BusinessPlanController {

	private static final Logger logger = LoggerFactory.getLogger(BusinessPlanController.class);
	
	@Inject
	BusinessPlanService service;



	@RequestMapping(value = "/businessPlanApply", method = RequestMethod.GET)
	public void businessPlanApply() throws Exception {
		logger.info("businessPlanApply");

	}

	// 
	@RequestMapping(value = "/businessPlanApply", method = RequestMethod.POST)
	public String write(BusinessPlanVO businessPlanVO, MultipartHttpServletRequest mpRequest,RedirectAttributes redirect) throws Exception {
		logger.info("businessPlanApply");
		System.out.println(mpRequest.getContentLength());
		service.write(businessPlanVO, mpRequest);
		int bam_anc_idx = businessPlanVO.getBam_anc_idx();
		redirect.addAttribute("bam_anc_idx",bam_anc_idx);
		return "redirect:/bpm/businessPlanApplyList";
	}

	// 
	@RequestMapping(value = "/businessPlanApplyList", method = RequestMethod.GET)
	public String businessPlanApplyList(Model model,@RequestParam("bam_anc_idx") int bam_anc_idx, @ModelAttribute("scri") SearchCriteria scri) throws Exception {
		logger.info("businessPlanApplyList");

	
		Map<String, Integer> paramMap = new HashMap<String, Integer>();
		paramMap.put("rowStart", scri.getRowStart());
		paramMap.put("rowEnd", scri.getRowEnd());
		paramMap.put("bam_anc_idx",bam_anc_idx);
		model.addAttribute("list", service.businessPlanApplyList(paramMap));
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(service.listCount(scri));

		model.addAttribute("pageMaker", pageMaker);

		return "bpm/businessPlanApplyList";

	}

	//
	@RequestMapping(value = "/businessPlanApplyDetail", method = RequestMethod.GET)
	public String businessPlanApplyDetail(BusinessPlanVO businessPlanVO, @ModelAttribute("scri") SearchCriteria scri, Model model) throws Exception {
		logger.info("businessPlanApplyDetail");

		model.addAttribute("read", service.businessPlanApplyDetail(businessPlanVO.getBpm_bplan_idx()));
		model.addAttribute("scri", scri);

	

		
		  List<Map<String, Object>> fileList =
		  service.selectFileList(businessPlanVO.getBpm_bplan_idx());
		  System.out.println(fileList.size());
		  model.addAttribute("file", fileList);
		 
		return "bpm/businessPlanApplyDetail";
	}

	@RequestMapping(value = "/fileDown")
	public void fileDown(@RequestParam Map<String, Object> map, HttpServletResponse response) throws Exception {
		Map<String, Object> resultMap = service.selectFileInfo(map);
		String storedFileName = (String) resultMap.get("STORED_FILE_NAME");
		String originalFileName = (String) resultMap.get("ORG_FILE_NAME");

		// byte[]
		byte fileByte[] = org.apache.commons.io.FileUtils
				.readFileToByteArray(new File("C:\\mp\\file\\" + storedFileName));

		response.setContentType("application/octet-stream");
		response.setContentLength(fileByte.length);
		response.setHeader("Content-Disposition",
				"attachment; fileName=\"" + URLEncoder.encode(originalFileName, "UTF-8") + "\";");
		response.getOutputStream().write(fileByte);
		response.getOutputStream().flush();
		response.getOutputStream().close();

	}

}
