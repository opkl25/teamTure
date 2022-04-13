package team.ture.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import team.ture.service.LocationService;
import team.ture.service.MemberService;
import team.ture.vo.MemberVO;
import team.ture.vo.SarchVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	private LocationService locationService;
	
	@Autowired
	private MemberService memberService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 * @throws Exception 
	 */
	@RequestMapping(value = "/ ", method = RequestMethod.GET)
	public String home(Locale locale, Model model,SarchVO vo  ) throws Exception {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		
		
			
			/*
			 * Date date = new Date(); DateFormat dateFormat =
			 * DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
			 * 
			 * String formattedDate = dateFormat.format(date);
			 * 
			 * model.addAttribute("serverTime", formattedDate );
			 */
		
		
		
		
		
		
		return "home";
	}
	
	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String login(Locale locale, Model model) {
		
		
		
		
		return "member/login2";
	}

	
	@RequestMapping(value = "/member/create.do", method = RequestMethod.GET)
	public String create(Locale locale, Model model) {
		
		
		
		
		return "member/create";
	}
	
	@RequestMapping(value = "/mypage/nmypage.do", method = RequestMethod.GET)
	public String nmypage(Locale locale, Model model) {
		
		
		
		
		return "mypage/nmypage";
	}
	@RequestMapping(value = "/mypage/mypage.do", method = RequestMethod.GET)
	public String mypage(Locale locale, Model model) {
		
		
		
		
		return "mypage/mypage";
	}
	@RequestMapping(value = "/login/findpwd.do", method = RequestMethod.GET)
	public String findpwd(Locale locale, Model model) {
		
		
		
		
		return "login/findpwd";
	}
	@RequestMapping(value = "/login/findid.do", method = RequestMethod.GET)
	public String findid(Locale locale, Model model) {
		
		
		
		
		return "login/findid";
	}
	@RequestMapping(value = "/list.do", method = RequestMethod.GET)
	public String member_list(Locale locale, Model model) {
		
		
		
		
		return "member/list";
	}
	
	
	
	@RequestMapping(value = "loginCheck.do", method = RequestMethod.POST) 
	  public String loginCheck(MemberVO vo, HttpServletRequest req, RedirectAttributes rttr,@RequestParam("mid")String mid,@RequestParam("mpwd")String mpwd) throws Exception{ 
		  HttpSession session =req.getSession();
		  MemberVO login = memberService.loginCheck(vo);
		  System.out.println(login); 
		  vo =new MemberVO();
		  
		  vo.setMid(mid); vo.setMpwd(mpwd);
		  
		  
		  System.out.println(vo.getMid());
		  System.out.println(vo.getMpwd());
		  
	
	  
					  if (login == null) { 
						  System.out.println("1");
						  session.setAttribute("member", null);
						  rttr.addFlashAttribute("msg",false); 
						  
						  
					
						  
						  
						  // 로그인 체크 입력한 mid , password 값이 membervVO 에 담긴 vo 값과 비교 
					  } else if(vo.getMid() == mid &&  vo.getMpwd()== mpwd){
						  System.out.println("2");
						  session.setAttribute("member", login); 
						  System.out.println(login);
						  System.out.println(vo);
						  System.out.println(login);
						  
					  } 
	  return "redirect:/"; 
	  
	  
	  }
	
	@RequestMapping(value = "/logout.do", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception{
		
		session.invalidate();
		
		return "redirect:/";
	}
	
	
}