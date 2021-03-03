package a.b.controller;

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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import a.b.service.BoardService;
import a.b.service.ReplyService;
import a.b.vo.BoardVO;
import a.b.vo.Criteria;
import a.b.vo.PageMaker;
import a.b.vo.ReplyVO;
import a.b.vo.SearchCriteria;

@Controller
@RequestMapping("/*")
public class BoardController {

	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Inject
	BoardService service;
	
	@Inject
	ReplyService replyService;
	
	// 寃뚯떆�뙋 湲� �옉�꽦 �솕硫�
	@RequestMapping(value = "/businessplan/bpWriteView", method = RequestMethod.GET)
	public void bpWriteView() throws Exception{
		logger.info("bpWriteView");
		
	}
	
	@RequestMapping(value = "/business/businessWriteView", method = RequestMethod.GET)
	public void businessWriteView() throws Exception{
		logger.info("businessWriteView");
	}
	
	// 寃뚯떆�뙋 湲� �옉�꽦
	@RequestMapping(value = "/board/write", method = RequestMethod.POST)
	public String write(BoardVO boardVO, MultipartHttpServletRequest mpRequest) throws Exception{
		logger.info("bpWriteView");
		service.write(boardVO, mpRequest);
		
		return "redirect:/businessplan/bpList";
	}
	
	// 寃뚯떆�뙋 紐⑸줉 議고쉶
	@RequestMapping(value = "/business/receiptList", method = RequestMethod.GET)
	public String receiptList(Model model, @ModelAttribute("scri") SearchCriteria scri) throws Exception{
		logger.info("receiptList");
		
		model.addAttribute("list", service.receiptList(scri));
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(service.listCount(scri));
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "business/receiptList";
		
	}
	
	// 寃뚯떆�뙋2 紐⑸줉 議고쉶
	@RequestMapping(value = "/businessplan/bpList", method = RequestMethod.GET)
	public String bpList(Model model, @ModelAttribute("scri") SearchCriteria scri) throws Exception{
		logger.info("bpList");
		
		model.addAttribute("bpList", service.receiptList(scri));
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(service.listCount(scri));
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "businessplan/bpList";
		
	}
	
	@RequestMapping(value = "/businessplan/bpReadView", method = RequestMethod.GET)
	public String bpReadView(BoardVO boardVO, Model model, @ModelAttribute("scri") SearchCriteria scri) throws Exception{
		logger.info("bpReadView");

		
		model.addAttribute("read", service.read(boardVO.getBno()));
		model.addAttribute("scri", scri);
		 

		//List<ReplyVO> replyList = replyService.readReply(boardVO.getBno());
		//model.addAttribute("replyList", replyList);

		/*
		 * List<Map<String, Object>> fileList =
		 * service.selectFileList(boardVO.getBno()); model.addAttribute("file",
		 * fileList);
		 */		
		return "businessplan/bpReadView";
		
	}

	@RequestMapping(value = "/evaluation/evaluationList", method = RequestMethod.GET)
	public String evaluationList(Model model, @ModelAttribute("scri") SearchCriteria scri) throws Exception{
		logger.info("evaluationList");
		
		model.addAttribute("evaluationList", service.receiptList(scri));
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(service.listCount(scri));
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "evaluation/evaluationList";
		
	}
	
	@RequestMapping(value = "/evaluation/evaluationRaitingView", method = RequestMethod.GET)
	public void evaluationRaitingView() throws Exception{
		logger.info("evaluationRaitingView");
	}
	
	@RequestMapping(value = "/list4", method = RequestMethod.GET)
	public String list4(Model model, @ModelAttribute("scri") SearchCriteria scri) throws Exception{
		logger.info("list4");
		
		model.addAttribute("list4", service.receiptList(scri));
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(service.listCount(scri));
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "board/list4";
		
	}	
	
	@RequestMapping(value = "/evaluation/evaluationScore", method = RequestMethod.GET)
	public String evaluationScore() throws Exception{
		logger.info("evaluationScore");
	
		return "evaluation/evaluationScore";
	}
	
	@RequestMapping(value = "/evaluation/opinion", method = RequestMethod.GET)
	public String opinion() throws Exception{
		logger.info("opinion");
	
		return "evaluation/opinion";
	}
	
	// 寃뚯떆�뙋 議고쉶
	@RequestMapping(value = "/board/readView", method = RequestMethod.GET)
	public String read(BoardVO boardVO, @ModelAttribute("scri") SearchCriteria scri, Model model) throws Exception {
		logger.info("read");

		model.addAttribute("read", service.read(boardVO.getBno()));
		model.addAttribute("scri", scri);

		List<ReplyVO> replyList = replyService.readReply(boardVO.getBno());
		model.addAttribute("replyList", replyList);

		/*
		 * List<Map<String, Object>> fileList =
		 * service.selectFileList(boardVO.getBno()); model.addAttribute("file",
		 * fileList);
		 */		
		return "board/readView";
	}
	
	// 寃뚯떆�뙋 �닔�젙酉�
	@RequestMapping(value = "/updateView", method = RequestMethod.GET)
	public String updateView(BoardVO boardVO, @ModelAttribute("scri") SearchCriteria scri, Model model)
			throws Exception {
		logger.info("updateView");

		model.addAttribute("update", service.read(boardVO.getBno()));
		model.addAttribute("scri", scri);

		List<Map<String, Object>> fileList = service.selectFileList(boardVO.getBno());
		model.addAttribute("file", fileList);
		return "board/updateView";
	}

	// 寃뚯떆�뙋 �닔�젙
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(BoardVO boardVO, 
						 @ModelAttribute("scri") SearchCriteria scri, 
						 RedirectAttributes rttr,
						 @RequestParam(value="fileNoDel[]") String[] files,
						 @RequestParam(value="fileNameDel[]") String[] fileNames,
						 MultipartHttpServletRequest mpRequest) throws Exception {
		logger.info("update");
		service.update(boardVO, files, fileNames, mpRequest);

		rttr.addAttribute("page", scri.getPage());
		rttr.addAttribute("perPageNum", scri.getPerPageNum());
		rttr.addAttribute("searchType", scri.getSearchType());
		rttr.addAttribute("keyword", scri.getKeyword());

		return "redirect:/business/receiptList";
	}

	// 寃뚯떆�뙋 �궘�젣
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String delete(BoardVO boardVO, @ModelAttribute("scri") SearchCriteria scri, RedirectAttributes rttr) throws Exception{
		logger.info("delete");
		
		service.delete(boardVO.getBno());
		
		rttr.addAttribute("page", scri.getPage());
		rttr.addAttribute("perPageNum", scri.getPerPageNum());
		rttr.addAttribute("searchType", scri.getSearchType());
		rttr.addAttribute("keyword", scri.getKeyword());
		
		return "redirect:/business/receiptList";
	}
	
	//�뙎湲� �옉�꽦
	@RequestMapping(value="/replyWrite", method = RequestMethod.POST)
	public String replyWrite(ReplyVO vo, SearchCriteria scri, RedirectAttributes rttr) throws Exception {
		logger.info("reply Write");
		
		replyService.writeReply(vo);
		
		rttr.addAttribute("bno", vo.getBno());
		rttr.addAttribute("page", scri.getPage());
		rttr.addAttribute("perPageNum", scri.getPerPageNum());
		rttr.addAttribute("searchType", scri.getSearchType());
		rttr.addAttribute("keyword", scri.getKeyword());
		
		return "redirect:/board/readView";
	}
	
	//�뙎湲� �닔�젙 GET
		@RequestMapping(value="/replyUpdateView", method = RequestMethod.GET)
		public String replyUpdateView(ReplyVO vo, SearchCriteria scri, Model model) throws Exception {
			logger.info("reply Write");
			
			model.addAttribute("replyUpdate", replyService.selectReply(vo.getRno()));
			model.addAttribute("scri", scri);
			
			return "board/replyUpdateView";
		}
		
		//�뙎湲� �닔�젙 POST
		@RequestMapping(value="/replyUpdate", method = RequestMethod.POST)
		public String replyUpdate(ReplyVO vo, SearchCriteria scri, RedirectAttributes rttr) throws Exception {
			logger.info("reply Write");
			
			replyService.updateReply(vo);
			
			rttr.addAttribute("bno", vo.getBno());
			rttr.addAttribute("page", scri.getPage());
			rttr.addAttribute("perPageNum", scri.getPerPageNum());
			rttr.addAttribute("searchType", scri.getSearchType());
			rttr.addAttribute("keyword", scri.getKeyword());
			
			return "redirect:/board/readView";
		}
	
	//�뙎湲� �궘�젣 GET
		@RequestMapping(value="/replyDeleteView", method = RequestMethod.GET)
		public String replyDeleteView(ReplyVO vo, SearchCriteria scri, Model model) throws Exception {
			logger.info("reply Write");
			
			model.addAttribute("replyDelete", replyService.selectReply(vo.getRno()));
			model.addAttribute("scri", scri);
			

			return "board/replyDeleteView";
		}
		
		@RequestMapping(value="/replyDelete", method = RequestMethod.POST)
		public String replyDelete(ReplyVO vo, SearchCriteria scri, RedirectAttributes rttr) throws Exception {
			logger.info("reply Write");
			
			replyService.deleteReply(vo);
			
			rttr.addAttribute("bno", vo.getBno());
			rttr.addAttribute("page", scri.getPage());
			rttr.addAttribute("perPageNum", scri.getPerPageNum());
			rttr.addAttribute("searchType", scri.getSearchType());
			rttr.addAttribute("keyword", scri.getKeyword());
			
			return "redirect:/board/readView";
		}
		

		@RequestMapping(value="/fileDown")
		public void fileDown(@RequestParam Map<String, Object> map, HttpServletResponse response) throws Exception{
			Map<String, Object> resultMap = service.selectFileInfo(map);
			String storedFileName = (String) resultMap.get("STORED_FILE_NAME");
			String originalFileName = (String) resultMap.get("ORG_FILE_NAME");
			
			// �뙆�씪�쓣 ���옣�뻽�뜕 �쐞移섏뿉�꽌 泥⑤��뙆�씪�쓣 �씫�뼱 byte[]�삎�떇�쑝濡� 蹂��솚�븳�떎.
			byte fileByte[] = org.apache.commons.io.FileUtils.readFileToByteArray(new File("C:\\mp\\file\\"+storedFileName));
			
			response.setContentType("application/octet-stream");
			response.setContentLength(fileByte.length);
			response.setHeader("Content-Disposition",  "attachment; fileName=\""+URLEncoder.encode(originalFileName, "UTF-8")+"\";");
			response.getOutputStream().write(fileByte);
			response.getOutputStream().flush();
			response.getOutputStream().close();
			
		}
		
	
}