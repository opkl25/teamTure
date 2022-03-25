package team.ture.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import team.ture.service.LocationService;
import team.ture.vo.LocationVO;
import team.ture.vo.SarchVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	private LocationService locationService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 * @throws Exception 
	 */
	@RequestMapping(value = "/ ", method = RequestMethod.GET)
	public String home(Locale locale, Model model,SarchVO vo) throws Exception {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
							
		
		
		
		
		return "home";
	}
	
	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String login(Locale locale, Model model) {
		
		
		
		
		return "login/login2";
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
	
	
	
}
