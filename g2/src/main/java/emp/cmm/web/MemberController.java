package emp.cmm.web;


import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import emp.cmm.service.MemberService;
import emp.cmm.vo.MemberVO;

@Controller
@RequestMapping("/cmm/*")
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Inject
	MemberService service;
	
	@Inject
	BCryptPasswordEncoder pwdEncoder;
	
	// 占쎌돳占쎌뜚揶쏉옙占쎌뿯 get
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void getRegister() throws Exception {
		logger.info("get register");
	}
	
	// 占쎌돳占쎌뜚揶쏉옙占쎌뿯 post
	@RequestMapping(value = "/postregister", method = RequestMethod.POST)
	public String postRegister(MemberVO vo )throws Exception {
		logger.info("post register");
		int result = service.idChk(vo);
		try {
			if(result == 1) {
				return "/cmm/register";
			}else if(result == 0) {
				String inputPass = vo.getUser_pwd();
				String pwd = pwdEncoder.encode(inputPass);
				vo.setUser_pwd(pwd);
				service.register(vo);
			}
		} catch (Exception e) {
			System.out.println(e.toString());
		}
				return "redirect:/";
	}
	
	// 嚥≪뮄�젃占쎌뵥 post
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(MemberVO vo, HttpSession session, RedirectAttributes rttr) throws Exception{
		logger.info("post login");
	
		
		boolean pwdMatch = false;
		session.getAttribute("member");
		MemberVO login = service.login(vo);
		
		if(login != null)
			pwdMatch = pwdEncoder.matches(vo.getUser_pwd() ,login.getUser_pwd());
			
		if(login != null && pwdMatch == true) {
			session.setAttribute("member", login);
			return "redirect:/bam/businessAnnouncementList";
		}else {
			session.setAttribute("member", null); 
			rttr.addFlashAttribute("msg", false);
			return "redirect:/";
		}
	}
	
	
	// 嚥≪뮄�젃占쎈툡占쎌뜍 post
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception{
		
		session.invalidate();
		
		return "redirect:/";
	}
	
	// 占쎌돳占쎌뜚占쎌젟癰귨옙 占쎈땾占쎌젟 get
	@RequestMapping(value="/memberManagement", method = RequestMethod.GET)
	public String memberManagement() throws Exception{
		return "cmm/memberManagement";
	}
	
	// 占쎌돳占쎌뜚占쎌젟癰귨옙 占쎈땾占쎌젟  post
	@RequestMapping(value="/memberUpdate", method = RequestMethod.POST)
	public String registerUpdate(MemberVO vo, HttpSession session) throws Exception{
		
		MemberVO login = service.login(vo);
		
		boolean pwdMatch = pwdEncoder.matches(vo.getUser_pwd(), login.getUser_pwd());
		if(pwdMatch) {
			service.memberUpdate(vo);
			session.invalidate();
		}else {
			return "cmm/memberUpdateView";
		}
		service.memberUpdate(vo);
		session.invalidate();
		return "redirect:/cmm/login";
	}
	
	// 占쎌돳占쎌뜚 占쎄퉱占쎈닚 get
	@RequestMapping(value="/memberDeleteView", method = RequestMethod.GET)
	public String memberDeleteView() throws Exception{
		return "cmm/memberDeleteView";
	}
	
	// 占쎌돳占쎌뜚 占쎄퉱占쎈닚 post
	@RequestMapping(value="/memberDelete", method = RequestMethod.POST)
	public String memberDelete(MemberVO vo, HttpSession session, RedirectAttributes rttr) throws Exception{
		
		service.memberDelete(vo);
		session.invalidate();
		
		return "redirect:/cmm/login";
	}
	
	
	@ResponseBody
	@RequestMapping(value="/passChk", method = RequestMethod.POST)
	public boolean passChk(MemberVO vo) throws Exception {

		MemberVO login = service.login(vo);
		boolean pwdChk = pwdEncoder.matches(vo.getUser_pwd(), login.getUser_pwd());
		return pwdChk;
	}
	

	
	@ResponseBody
	@RequestMapping(value="/idChk", method = RequestMethod.POST)
	public int idChk(MemberVO vo) throws Exception {
		int result = service.idChk(vo);
		return result;
	}
	@RequestMapping(value="/agreement", method = RequestMethod.GET)
	public String agreement(MemberVO vo, HttpSession session) throws Exception{
		
		return "cmm/agreement";
	}
}

