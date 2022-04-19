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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import team.ture.service.BoardService;
import team.ture.service.BreplyService;
import team.ture.vo.BoardVO;
import team.ture.vo.BreplyVO;
import team.ture.vo.SarchVO;

/**
 * Handles requests for the application home page.
 */
@RequestMapping(value="/board")
@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	
	@Autowired
	private BreplyService breplyService;
	
	
	
	
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
		List<BreplyVO> list = breplyService.list();
		
		model.addAttribute("list",list);
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
			
			map.setFilename("");
			
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
	
	
	/* 댓글 등록 and 업로드	 */
	@RequestMapping(value="/breplyinsert" , method = RequestMethod.POST)
	@ResponseBody
	public BreplyVO breplyinsert(HttpServletRequest request, Model model, BreplyVO vo) throws Exception {
						
		String path = request.getSession().getServletContext().getRealPath("/resources/img/upload");
		
				
		File dir = new File(path); 
		if(!dir.exists()) { 
			dir.mkdirs(); 
		}
		
		
		
		MultipartFile file=  vo.getUploadFile(); 
				
		  if(!file.getOriginalFilename().isEmpty()) {
		  
		  file.transferTo(new File(path, file.getOriginalFilename())); //업로드한 파일 카피
		  model.addAttribute("msg", "File uploaded successfully.");
		  vo.setImg(file.getOriginalFilename());
		  
		  breplyService.insert(vo);
		  
		  
		  
		  }else if(vo.getImg()!=null) {
		  
		  
		  breplyService.insert(vo);
		  
		  
		  }else {
		  
		  vo.setImg("");
		  
		  breplyService.insert(vo);
		  
		  
		  
		  }
		 
		
		BreplyVO bro = breplyService.detail(vo.getBridx());
		
		
		System.out.println("리턴 bro");
		return bro;
		
		
	}
	
	
	
	@RequestMapping(value="/deleteReply" , method = RequestMethod.POST)
	@ResponseBody
	public int deleteReply(HttpServletRequest request, Model model, int bridx) throws Exception {
		
		
		breplyService.deleteReply(bridx);
		
		
		return bridx;
			
		
		
	}
	
	/* 댓글 수정 업로드	 */
	@RequestMapping(value="/breplyUpdate" , method = RequestMethod.POST)
	@ResponseBody
	public BreplyVO breplyUpdate(HttpServletRequest request, Model model, BreplyVO map) throws Exception {
		
		System.out.println("수정업로드 실행");
		System.out.println(map.getImg());
		System.out.println(map.getBrcontent());
		System.out.println(map.getBrwriter());
		System.out.println(map.getBrwdate());
		
		
		String path = request.getSession().getServletContext().getRealPath("/resources/img/upload");
		
		
		File dir = new File(path); 
		if(!dir.exists()) { 
			dir.mkdirs(); 
		}
		
				
		
		
		
		
		
		System.out.println(map.getUploadFile());
		
		
		
				
		MultipartFile file=  map.getUploadFile(); 
		
		  if(!file.getOriginalFilename().isEmpty()) {
		  
		  file.transferTo(new File(path, file.getOriginalFilename())); //업로드한 파일 카피
		  model.addAttribute("msg", "File uploaded successfully.");
		  map.setImg(file.getOriginalFilename());
		  
		  breplyService.updateReply(map);
		  
		  
		  
		  }else if(map.getImg()!=null) {
		  
		  
		  breplyService.updateReply(map);
		  
		  
		  }else {
		  
			  map.setImg("");
		  
		  breplyService.updateReply(map);
		  
		  
		  
		  }
		 
		
		BreplyVO bro = breplyService.detail(map.getBridx());
		
		
		System.out.println("리턴 bro");
		return bro;
		
		
	}
	
	
	
	
	
	
	
}
