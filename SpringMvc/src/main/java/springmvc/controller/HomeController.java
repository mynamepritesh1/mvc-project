package springmvc.controller;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	
	@RequestMapping("/home")
	public String home(Model model) {
		System.out.println("this is home url");
		model.addAttribute("name", "pritesh ingale");
		model.addAttribute("id", 108);
		model.addAttribute("city", "Mumbai");
		List<String> friends =new ArrayList<String>();
		friends.add("priyanka");
		friends.add("priyanka");
		friends.add("priyanka");
		model.addAttribute("f",friends);
	return "index";
	
}
	@RequestMapping("/about")
   public String about()
   {
		System.out.println("this is about controller");
	   return "about";
	   
   }
	@RequestMapping("/help")
	   public ModelAndView help()
	   {
			System.out.println("this is help controller");
			//creating model and view object
			ModelAndView modelAndView=new ModelAndView();
			//setting the data
			modelAndView.addObject("name", "priyanka");
			LocalDateTime now =LocalDateTime.now();
			modelAndView.addObject("time", now);
			//setting the view name
			modelAndView.setViewName("help");
			
			
			//marks
			List<Integer> list =new ArrayList<Integer>();
			list.add(12);
			list.add(13);
			list.add(14);
			list.add(16);
			modelAndView.addObject("marks",list);
		   return modelAndView;
		   
	   }
		
	
}
