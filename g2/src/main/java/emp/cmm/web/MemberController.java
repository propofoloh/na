package emp.cmm.web;


import java.lang.reflect.Member;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import a.b.service.MemberService;
import a.b.vo.MemberVO;

@Controller
@RequestMapping("/member/*")
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Inject
	MemberService service;
	
	@Inject
	BCryptPasswordEncoder pwdEncoder;
	
	// �쉶�썝媛��엯 get
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void getRegister() throws Exception {
		logger.info("get register");
	}
	
	// �쉶�썝媛��엯 post
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String postRegister(MemberVO vo) throws Exception {
		logger.info("post register");
		int result = service.idChk(vo);
		try {
			if(result == 1) {
				return "/member/register";
			}else if(result == 0) {
				String inputPass = vo.getUserPass();
				String pwd = pwdEncoder.encode(inputPass);
				vo.setUserPass(pwd);
				
				service.register(vo);
			}
			// �슂湲곗뿉�꽌~ �엯�젰�맂 �븘�씠�뵒媛� 議댁옱�븳�떎硫� -> �떎�떆 �쉶�썝媛��엯 �럹�씠吏�濡� �룎�븘媛�湲� 
			// 議댁옱�븯吏� �븡�뒗�떎硫� -> register
		} catch (Exception e) {
			throw new RuntimeException();
		}
		return "redirect:/";
	}
	
	// 濡쒓렇�씤 post
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(MemberVO vo, HttpSession session, RedirectAttributes rttr) throws Exception{
		logger.info("post login");
	
		session.getAttribute("member");
		MemberVO login = service.login(vo);
		boolean pwdMatch = pwdEncoder.matches(vo.getUserPass(), login.getUserPass());

		if(login != null && pwdMatch == true) {
			session.setAttribute("member", login);
		} else {
			session.setAttribute("member", null); 
			rttr.addFlashAttribute("msg", false);
		}
		
		
		return "redirect:/business/receipList";
	}
	
	// 濡쒓렇�븘�썐 post
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception{
		
		session.invalidate();
		
		return "redirect:/";
	}
	
	// �쉶�썝�젙蹂� �닔�젙 get
	@RequestMapping(value="/memberUpdateView", method = RequestMethod.GET)
	public String registerUpdateView() throws Exception{
		return "member/memberUpdateView";
	}
	
	// �쉶�썝�젙蹂� �닔�젙  post
	@RequestMapping(value="/memberUpdate", method = RequestMethod.POST)
	public String registerUpdate(MemberVO vo, HttpSession session) throws Exception{
		
		MemberVO login = service.login(vo);
		
		boolean pwdMatch = pwdEncoder.matches(vo.getUserPass(), login.getUserPass());
		if(pwdMatch) {
			service.memberUpdate(vo);
			session.invalidate();
		}else {
			return "member/memberUpdateView";
		}
		service.memberUpdate(vo);
		session.invalidate();
		return "redirect:/";
	}
	
	// �쉶�썝 �깉�눜 get
	@RequestMapping(value="/memberDeleteView", method = RequestMethod.GET)
	public String memberDeleteView() throws Exception{
		return "member/memberDeleteView";
	}
	
	// �쉶�썝 �깉�눜 post
	@RequestMapping(value="/memberDelete", method = RequestMethod.POST)
	public String memberDelete(MemberVO vo, HttpSession session, RedirectAttributes rttr) throws Exception{
		
		service.memberDelete(vo);
		session.invalidate();
		
		return "redirect:/";
	}
	
	
	@ResponseBody
	@RequestMapping(value="/passChk", method = RequestMethod.POST)
	public boolean passChk(MemberVO vo) throws Exception {

		MemberVO login = service.login(vo);
		boolean pwdChk = pwdEncoder.matches(vo.getUserPass(), login.getUserPass());
		return pwdChk;
	}
	

	
	@ResponseBody
	@RequestMapping(value="/idChk", method = RequestMethod.POST)
	public int idChk(MemberVO vo) throws Exception {
		int result = service.idChk(vo);
		return result;
	}
	@RequestMapping(value="/Agreement", method = RequestMethod.GET)
	public String Agreement(MemberVO vo, HttpSession session) throws Exception{
		
		return "member/Agreement";
	}
}

