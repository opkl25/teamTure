package team.ture.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.study.vo.LocationVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/ ", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		
		
		return "home";
	}
	
	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String login(Locale locale, Model model) {
		
		
		
		
		return "login/login";
	}
	
	
	  @RequestMapping(value = "/home1.do", method = RequestMethod.GET) public
	 
	  String home1(Locale locale, Model model) {
	  logger.info("Welcom home! The client locale is {}.", locale);
	  
	  
	  
	  return "home"; 
	  
	  }
	 

	
	@RequestMapping(value = "/member/create.do", method = RequestMethod.GET)
	public String create(Locale locale, Model model) {
		
		
		
		
		return "member/create";
	}
	
	
	
	
}
