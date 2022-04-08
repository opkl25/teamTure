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
import team.ture.vo.BoardVO;
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
		
		/* 이미지업로드	*/
	
	@RequestMapping("/upload.do")
	public String upload(HttpServletRequest request, @RequestParam("uploadFile") MultipartFile file, @RequestParam("uploadFile1") MultipartFile file1, @RequestParam("uploadFile2") MultipartFile file2, Model model,TspotVO map) throws Exception {
		
		String path = request.getSession().getServletContext().getRealPath("/resources/img/upload");
		
		System.out.println(map.getLidx());
		System.out.println("path::"+path);
		
		File dir = new File(path); 
		if(!dir.exists()) { 
			dir.mkdirs(); 
		}
		
			
		if(!file.getOriginalFilename().isEmpty() && !file1.getOriginalFilename().isEmpty() && !file2.getOriginalFilename().isEmpty() ) {
			System.out.println("file name :"+file.getOriginalFilename());
			file.transferTo(new File(path, file.getOriginalFilename()));
			file1.transferTo(new File(path, file1.getOriginalFilename()));
			file2.transferTo(new File(path, file2.getOriginalFilename()));
			System.out.println(file.getOriginalFilename());
			model.addAttribute("msg", "File uploaded successfully.");
			map.setTimg(file.getOriginalFilename());
			map.setTimg1(file1.getOriginalFilename());
			map.setTimg2(file2.getOriginalFilename());
			
			switch(map.getLidx()) {
				
			case 1:
				map.setTag("고창군");
				break;
			case 2:
				map.setTag("군산시");
				break;
			case 3:
				map.setTag("김제시");
				break;
			case 4:
				map.setTag("남원시");
				break;
			case 5:
				map.setTag("무주군");
				break;
			case 6:
				map.setTag("부안군");
				break;
			case 7:
				map.setTag("순창군");
				break;
			case 8:
				map.setTag("완주군");
				break;
			case 9:
				map.setTag("익산시");
				break;
			case 10:
				map.setTag("임실군");
				break;
			case 11:
				map.setTag("장수군");
				break;
			case 12:
				map.setTag("전주시");
				break;
			case 13:
				map.setTag("정읍시");
				break;
			case 14:
				map.setTag("진안군");
				break;
			case 15:
				map.setTag("타 지역");
				break;
			
			
			}
			
			
			
			tspotService.insert(map);
			
			return "redirect:/tspot/view.do?tidx="+map.getTidx();
			
			
		}else if(!file.getOriginalFilename().isEmpty() && !file1.getOriginalFilename().isEmpty()) {
			System.out.println("file name :"+file.getOriginalFilename());
			file.transferTo(new File(path, file.getOriginalFilename()));
			file1.transferTo(new File(path, file1.getOriginalFilename()));
	
			System.out.println(file.getOriginalFilename());
			model.addAttribute("msg", "File uploaded successfully.");
			map.setTimg(file.getOriginalFilename());
			map.setTimg1(file1.getOriginalFilename());
			map.setTimg2("빈 이미지 파일입니다.png");
			
			
			switch(map.getLidx()) {
				
			case 1:
				map.setTag("고창군");
				break;
			case 2:
				map.setTag("군산시");
				break;
			case 3:
				map.setTag("김제시");
				break;
			case 4:
				map.setTag("남원시");
				break;
			case 5:
				map.setTag("무주군");
				break;
			case 6:
				map.setTag("부안군");
				break;
			case 7:
				map.setTag("순창군");
				break;
			case 8:
				map.setTag("완주군");
				break;
			case 9:
				map.setTag("익산시");
				break;
			case 10:
				map.setTag("임실군");
				break;
			case 11:
				map.setTag("장수군");
				break;
			case 12:
				map.setTag("전주시");
				break;
			case 13:
				map.setTag("정읍시");
				break;
			case 14:
				map.setTag("진안군");
				break;
			case 15:
				map.setTag("타 지역");
				break;
			
			
			}
			
			
			
			tspotService.insert(map);
			
			return "redirect:/tspot/view.do?tidx="+map.getTidx();
			
			
		}else if(!file.getOriginalFilename().isEmpty() ) {
			System.out.println("file name :"+file.getOriginalFilename());
			file.transferTo(new File(path, file.getOriginalFilename()));
			
			System.out.println(file.getOriginalFilename());
			model.addAttribute("msg", "File uploaded successfully.");
			map.setTimg(file.getOriginalFilename());
			map.setTimg1("빈 이미지 파일입니다.png");
			map.setTimg2("빈 이미지 파일입니다.png");
			
			switch(map.getLidx()) {
				
			case 1:
				map.setTag("고창군");
				break;
			case 2:
				map.setTag("군산시");
				break;
			case 3:
				map.setTag("김제시");
				break;
			case 4:
				map.setTag("남원시");
				break;
			case 5:
				map.setTag("무주군");
				break;
			case 6:
				map.setTag("부안군");
				break;
			case 7:
				map.setTag("순창군");
				break;
			case 8:
				map.setTag("완주군");
				break;
			case 9:
				map.setTag("익산시");
				break;
			case 10:
				map.setTag("임실군");
				break;
			case 11:
				map.setTag("장수군");
				break;
			case 12:
				map.setTag("전주시");
				break;
			case 13:
				map.setTag("정읍시");
				break;
			case 14:
				map.setTag("진안군");
				break;
			case 15:
				map.setTag("타 지역");
				break;
			
			
			}
			
			
			
			tspotService.insert(map);
			
			return "redirect:/tspot/view.do?tidx="+map.getTidx();
			
			
		}else if(map.getTimg()==null) {
			
			map.setTimg("빈 이미지 파일입니다.png");
			map.setTimg1("빈 이미지 파일입니다.png");
			map.setTimg2("빈 이미지 파일입니다.png");
			
			
			switch(map.getLidx()) {
				
				case 1:
					map.setTag("고창군");
					break;
				case 2:
					map.setTag("군산시");
					break;
				case 3:
					map.setTag("김제시");
					break;
				case 4:
					map.setTag("남원시");
					break;
				case 5:
					map.setTag("무주군");
					break;
				case 6:
					map.setTag("부안군");
					break;
				case 7:
					map.setTag("순창군");
					break;
				case 8:
					map.setTag("완주군");
					break;
				case 9:
					map.setTag("익산시");
					break;
				case 10:
					map.setTag("임실군");
					break;
				case 11:
					map.setTag("장수군");
					break;
				case 12:
					map.setTag("전주시");
					break;
				case 13:
					map.setTag("정읍시");
					break;
				case 14:
					map.setTag("진안군");
					break;
				case 15:
					map.setTag("타 지역");
					break;
				
				
				}
			
			tspotService.insert(map);
			
			return "redirect:/tspot/view.do?tidx="+map.getTidx();
			
		}else {
			model.addAttribute("msg", "Please select a valid mediaFile..");
			System.out.println("test::::"+map.getTimg());
			return "tspot/insert.do";
		}
		
	}
	
	
	/* 관광지 수정 */
	@RequestMapping(value = "/modify.do", method = RequestMethod.GET)
	public String modify(Locale locale, Model model, int tidx) throws Exception {
						
		TspotVO vo = tspotService.detail(tidx);
		
		model.addAttribute("vo",vo);
		
		
		return "tspot/modify";
	}
	
	
	
	@RequestMapping(value = "/modify.do", method = RequestMethod.POST)
	public String modify(HttpServletRequest request, @RequestParam("uploadFile") MultipartFile file, @RequestParam("uploadFile1") MultipartFile file1, @RequestParam("uploadFile2") MultipartFile file2, Model model,TspotVO map) throws Exception {
				
		String path = request.getSession().getServletContext().getRealPath("/resources/img/upload");
		
		System.out.println("path::"+path);
		
		File dir = new File(path); 
		if(!dir.exists()) { 
			dir.mkdirs(); 
		}
		
		if(!file.getOriginalFilename().isEmpty()) {
			System.out.println("1");
			file.transferTo(new File(path, file.getOriginalFilename())); //업로드한 파일 카피
			map.setTimg(file.getOriginalFilename());
		}else if(map.getTimg()!="빈 이미지 파일입니다.png"){
			System.out.println("ok");
			
			
		}else {
			System.out.println("2");
			map.setTimg("빈 이미지 파일입니다.png");
		}
		
		if(!file1.getOriginalFilename().isEmpty()) {
			System.out.println("3");
			file1.transferTo(new File(path, file1.getOriginalFilename())); //업로드한 파일 카피
			map.setTimg1(file1.getOriginalFilename());
		}else if(map.getTimg1()!="빈 이미지 파일입니다.png"){
			System.out.println("1ok");
			
			
		}else {
			System.out.println("4");
			map.setTimg1("빈 이미지 파일입니다.png");
		}
		
		if(!file2.getOriginalFilename().isEmpty()) {
			System.out.println("5");
			file2.transferTo(new File(path, file2.getOriginalFilename())); //업로드한 파일 카피
			map.setTimg2(file2.getOriginalFilename());
		}else if(map.getTimg2()!="빈 이미지 파일입니다.png"){
			System.out.println("2ok");
			
			
		}else {
			System.out.println("6");
			map.setTimg2("빈 이미지 파일입니다.png");
		}
			
		
		switch(map.getLidx()) {
		
		case 1:
			map.setTag("고창군");
			break;
		case 2:
			map.setTag("군산시");
			break;
		case 3:
			map.setTag("김제시");
			break;
		case 4:
			map.setTag("남원시");
			break;
		case 5:
			map.setTag("무주군");
			break;
		case 6:
			map.setTag("부안군");
			break;
		case 7:
			map.setTag("순창군");
			break;
		case 8:
			map.setTag("완주군");
			break;
		case 9:
			map.setTag("익산시");
			break;
		case 10:
			map.setTag("임실군");
			break;
		case 11:
			map.setTag("장수군");
			break;
		case 12:
			map.setTag("전주시");
			break;
		case 13:
			map.setTag("정읍시");
			break;
		case 14:
			map.setTag("진안군");
			break;
		case 15:
			map.setTag("타 지역");
			break;
		
		
		}
		
		tspotService.update(map);
		
		return "redirect:/tspot/view.do?tidx="+map.getTidx();
		
		
		
	}
	
	@RequestMapping(value = "/delete.do", method = RequestMethod.POST)
	public String delete(Locale locale, Model model, int tidx) throws Exception {
		
		tspotService.delete(tidx);
		
		
		return "redirect:list.do";
	}
	
	
	
	
		
	
	
}
