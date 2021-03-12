package emp.bam.web;

import java.io.File;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import emp.bam.service.BusinessAnnouncementService;
import emp.bam.vo.BusinessAnnouncementVO;
import emp.bam.util.PageMaker;
import emp.bam.util.SearchCriteria;

@Controller
@RequestMapping("/bam")
public class BusinessAnnouncementController {

	private static final Logger logger = LoggerFactory.getLogger(BusinessAnnouncementController.class);

	@Inject
	BusinessAnnouncementService service;

	//사업 공고 조회
	@RequestMapping(value = "/businessAnnouncementList", method = RequestMethod.GET)
	public String businessAnnouncementList(Model model, @ModelAttribute("scri") SearchCriteria scri) throws Exception{
		logger.info("businessAnnouncementList");

		model.addAttribute("list", service.businessAnnouncementList(scri));

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(service.listCount(scri));

		model.addAttribute("pageMaker", pageMaker);

		return "bam/businessAnnouncementList";

	}

	//사업공고 상세보기
	@RequestMapping(value = "/businessAnnouncementDetail", method = RequestMethod.GET)
	public String businessAnnouncementDetail(BusinessAnnouncementVO businessAnnouncementVO, @ModelAttribute("scri") SearchCriteria scri, Model model) throws Exception {
		logger.info("read");

		model.addAttribute("read", service.businessAnnouncementDetail(businessAnnouncementVO.getBam_anc_idx()));
		model.addAttribute("scri", scri);

		/*
		 * List<Map<String, Object>> fileList =
		 * service.selectFileList(boardVO.getBno()); model.addAttribute("file",
		 * fileList);
		 */		
		return "bam/businessAnnouncementDetail";
	}

	//사업 공고 등록
	@RequestMapping(value = "/businessAnnouncementInput", method = RequestMethod.GET)
	public void businessAnnouncementInput() throws Exception{
		logger.info("businessAnnouncementInput");
	}
	
	@RequestMapping(value = "/businessAnnouncementInputWrite", method = RequestMethod.POST)
	public String write(BusinessAnnouncementVO businessAnnouncementVO, MultipartHttpServletRequest mpRequest) throws Exception{
		logger.info("businessAnnouncementInputWrite");

		System.out.println("123123123123123"+businessAnnouncementVO.getAnc_title());
		service.write(businessAnnouncementVO, mpRequest);

		return "redirect:/bam/businessAnnouncementList";
	}

	//사업 공고 수정 페이지 조회
	@RequestMapping(value = "/businessAnnouncementUpdate", method = RequestMethod.GET)
	public String businessAnnouncementUpdate(BusinessAnnouncementVO businessAnnouncementVO, @ModelAttribute("scri") SearchCriteria scri, Model model)
			throws Exception {
		logger.info("updateView");

		model.addAttribute("update", service.businessAnnouncementDetail(businessAnnouncementVO.getBam_anc_idx()));
		model.addAttribute("scri", scri);

		List<Map<String, Object>> fileList = service.selectFileList(businessAnnouncementVO.getBam_anc_idx());
		model.addAttribute("file", fileList);
		return "bam/businessAnnouncementUpdate";
	}

	//사업 공고 수정
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(BusinessAnnouncementVO businessAnnouncementVO, 
			@ModelAttribute("scri") SearchCriteria scri, 
			RedirectAttributes rttr,
			@RequestParam(value="fileNoDel[]") String[] files,
			@RequestParam(value="fileNameDel[]") String[] fileNames,
			MultipartHttpServletRequest mpRequest) throws Exception {
		logger.info("update");
		service.update(businessAnnouncementVO, files, fileNames, mpRequest);

		rttr.addAttribute("page", scri.getPage());
		rttr.addAttribute("perPageNum", scri.getPerPageNum());
		rttr.addAttribute("searchType", scri.getSearchType());
		rttr.addAttribute("keyword", scri.getKeyword());

		return "redirect:/bam/businessAnnouncementList";
	}
	//파일첨부
	@RequestMapping(value="/fileDown")
	public void fileDown(@RequestParam Map<String, Object> map, HttpServletResponse response) throws Exception{
		Map<String, Object> resultMap = service.selectFileInfo(map);
		String storedFileName = (String) resultMap.get("STORED_FILE_NAME");
		String originalFileName = (String) resultMap.get("ORG_FILE_NAME");

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