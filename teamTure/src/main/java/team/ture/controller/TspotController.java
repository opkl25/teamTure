package team.ture.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

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
	
	@RequestMapping(value = "/view.do", method = RequestMethod.GET) 
	  public String detail(Locale locale, Model model, int tidx) throws Exception {
	  
			
		TspotVO vo = tspotService.detail(tidx);
			 
		model.addAttribute("vo",vo);
			
	  
	 
	  return "tspot/view"; 
	  
	  }
	
	
	@RequestMapping(value = "/insert.do", method = RequestMethod.GET) 
	  public String insert(Locale locale, Model model) throws Exception {
	 				
  
	 
	  return "tspot/insert"; 
	  
	  }
	
	@RequestMapping(value = "/insert.do", method = RequestMethod.POST) 
	  public String insert(Locale locale, Model model,TspotVO vo) throws Exception {
	 				
		tspotService.insert(vo);

	 
	  return "redirect:view.do?tidx="+vo.getTidx(); 
	  
	  }
	
		/* 이미지업로드	*/
	
	@RequestMapping("/upload.do")
	public String upload(HttpServletRequest request, @RequestParam("uploadFile") MultipartFile file, Model model,TspotVO map) throws Exception {
		
		String path = request.getSession().getServletContext().getRealPath("/resources/img/upload");
		
		System.out.println("path::"+path);
		
		File dir = new File(path); 
		if(!dir.exists()) { 
			dir.mkdirs(); 
		}
		
			
		if(!file.getOriginalFilename().isEmpty()) {
			System.out.println("file name :"+file.getOriginalFilename());
			file.transferTo(new File(path, file.getOriginalFilename()));
			System.out.println(file.getOriginalFilename());
			model.addAttribute("msg", "File uploaded successfully.");
			map.setTimg(file.getOriginalFilename());
			
			tspotService.insert(map);
			
			return "redirect:/tspot/view.do?tidx="+map.getTidx();
			
			
		}else if(map.getTimg()==null) {
			
			map.setTimg("빈 이미지 파일입니다.");
			
			tspotService.insert(map);
			
			return "redirect:/tspot/view.do?tidx="+map.getTidx();
			
		}else {
			model.addAttribute("msg", "Please select a valid mediaFile..");
			System.out.println("test::::"+map.getTimg());
			return "tspot/insert.do";
		}
		
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
