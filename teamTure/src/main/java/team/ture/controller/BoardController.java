package team.ture.controller;

import java.io.File;
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

import team.ture.service.BoardService;
import team.ture.vo.BoardVO;
import team.ture.vo.SarchVO;

/**
 * Handles requests for the application home page.
 */
@RequestMapping(value="/board")
@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	
	
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/list.do", method = RequestMethod.GET)
	public String list(Locale locale, Model model,SarchVO vo) throws Exception {
		

		List<BoardVO> list = boardService.list(vo);
		
		model.addAttribute("list",list); 
		
		return "board/list";
	}
	
	
	
	@RequestMapping(value = "/view.do", method = RequestMethod.GET)
	public String view(Locale locale, Model model, int bidx) throws Exception {
		
		BoardVO vo = boardService.detail(bidx);
		
		model.addAttribute("vo",vo);
		
		
		return "board/view";
	}
	
	@RequestMapping(value = "/modify.do", method = RequestMethod.GET)
	public String modify(Locale locale, Model model, int bidx) throws Exception {
						
		BoardVO vo = boardService.detail(bidx);
		
		model.addAttribute("vo",vo);
		
		
		return "board/modify";
	}
	
	
	
	@RequestMapping(value = "/modify.do", method = RequestMethod.POST)
	public String modify(HttpServletRequest request, @RequestParam("uploadFile") MultipartFile file, Model model,BoardVO map) throws Exception {
				
		String path = request.getSession().getServletContext().getRealPath("/resources/img/upload");
		
		System.out.println("path::"+path);
		
		File dir = new File(path); 
		if(!dir.exists()) { 
			dir.mkdirs(); 
		}
		
			
		if(!file.getOriginalFilename().isEmpty()) {
			
			System.out.println("file name :"+file.getOriginalFilename());
			file.transferTo(new File(path, file.getOriginalFilename())); //업로드한 파일 카피
			
			System.out.println(file.getOriginalFilename());
			model.addAttribute("msg", "File uploaded successfully.");
			
			map.setFilename(file.getOriginalFilename());
			
			boardService.update(map);
			
			return "redirect:view.do?bidx="+map.getBidx();
			
			
		}else if(map.getFilename()!=null) {
			
			boardService.update(map);
			
			return "redirect:view.do?bidx="+map.getBidx();
		}
		else {
			
			map.setFilename("빈 이미지 파일입니다.");
			
			boardService.update(map);
			
			return "redirect:/board/view.do?bidx="+map.getBidx();
			
		}
		
		
	}
	
	@RequestMapping(value = "/delete.do", method = RequestMethod.POST)
	public String delete(Locale locale, Model model, int bidx) throws Exception {
		
		boardService.delete(bidx);
		
		
		return "redirect:list.do";
	}
	
	@RequestMapping(value = "/register.do", method = RequestMethod.GET)
	public String register(Locale locale, Model model) throws Exception {
		
		
		
		return "board/register";
	}
	
	@RequestMapping(value = "/upload.do", method = RequestMethod.POST)
	public String upload(HttpServletRequest request, @RequestParam("uploadFile") MultipartFile file, Model model,BoardVO map) throws Exception {
		
		String path = request.getSession().getServletContext().getRealPath("/resources/img/upload");
		
		System.out.println("path::"+path);
		
		System.out.println(map.getFilename());
		
		
		
		File dir = new File(path); 
		if(!dir.exists()) { 
			dir.mkdirs(); 
		}
		
			
		if(!file.getOriginalFilename().isEmpty()) {
			System.out.println("file name :"+file.getOriginalFilename());
			file.transferTo(new File(path, file.getOriginalFilename())); //업로드한 파일 카피
			
			System.out.println(file.getOriginalFilename());
			model.addAttribute("msg", "File uploaded successfully.");
			
			map.setFilename(file.getOriginalFilename());
			
			boardService.upload(map);
			System.out.println("test::::"+map.getFilename());
			
			return "redirect:/board/view.do?bidx="+map.getBidx();
			
			
		}else if(map.getFilename()==null) {
			
			map.setFilename("빈 이미지 파일입니다.");
			
			boardService.upload(map);
			
			return "redirect:/board/view.do?bidx="+map.getBidx();
			
		}else {
			model.addAttribute("msg", "Please select a valid mediaFile..");
			System.out.println("업로드 실패");
			
			return "board/register.do";
			
		}
		
		
	}
	
	
	/*
	 * @RequestMapping(value="/register.do", method= {RequestMethod.POST}) public
	 * String register(MultipartHttpServletRequest req, MultipartFile file, BoardVO
	 * vo) throws Exception {
	 * 
	 * 
	 * 
	 * 
	 * boardService.insert(vo);
	 * 
	 * return "redirect:view.do?bidx="+vo.getBidx(); }
	 */
	
	
	/*테스트*/
	@RequestMapping(value = "/test.do", method = RequestMethod.GET)
	public String test(Locale locale, Model model) throws Exception {
		
		
		
		return "board/test";
	}
	
	
	
	
	
	
	
}
