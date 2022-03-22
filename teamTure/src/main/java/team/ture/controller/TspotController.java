package team.ture.controller;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import team.ture.service.TspotService;
import team.ture.vo.SarchVO;
import team.ture.vo.TspotVO;

/**
 * Handles requests for the application home page.
 */
@RequestMapping(value="/tspot")
@Controller
public class TspotController {
	
	@Autowired
	private TspotService tspotService;
	
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/list.do", method = RequestMethod.GET)
	public String List(Locale locale, Model model,SarchVO vo) throws Exception {
		
		List<TspotVO> list = tspotService.list(vo);
		
		model.addAttribute("list",list); 
		
		return "tspot/list";
	}
	
	
	
	/*
	 * @RequestMapping(value = "/view.do", method = RequestMethod.GET) public String
	 * view(Locale locale, Model model, int bidx) throws Exception {
	 * 
	 * BoardVO vo = boardService.detail(bidx);
	 * 
	 * model.addAttribute("vo",vo);
	 * 
	 * 
	 * return "board/view"; }
	 * 
	 * @RequestMapping(value = "/modify.do", method = RequestMethod.GET) public
	 * String modify(Locale locale, Model model, int bidx) throws Exception {
	 * 
	 * BoardVO vo = boardService.detail(bidx);
	 * 
	 * model.addAttribute("vo",vo);
	 * 
	 * 
	 * return "board/modify"; }
	 * 
	 * @RequestMapping(value = "/modify.do", method = RequestMethod.POST) public
	 * String modify(Locale locale, Model model, int bidx, BoardVO vo) throws
	 * Exception {
	 * 
	 * boardService.update(vo);
	 * 
	 * return "redirect:view.do?bidx="+vo.getBidx(); }
	 * 
	 * @RequestMapping(value = "/delete.do", method = RequestMethod.POST) public
	 * String delete(Locale locale, Model model, int bidx) throws Exception {
	 * 
	 * boardService.delete(bidx);
	 * 
	 * 
	 * return "redirect:list.do"; }
	 * 
	 * @RequestMapping(value = "/register.do", method = RequestMethod.GET) public
	 * String register(Locale locale, Model model) throws Exception {
	 * 
	 * 
	 * 
	 * return "board/register"; }
	 * 
	 * @RequestMapping(value = "/register.do", method = RequestMethod.POST) public
	 * String register(Locale locale, Model model, BoardVO vo) throws Exception {
	 * 
	 * boardService.insert(vo);
	 * 
	 * return "redirect:view.do?bidx="+vo.getBidx(); }
	 */
	
		
	
	
}
