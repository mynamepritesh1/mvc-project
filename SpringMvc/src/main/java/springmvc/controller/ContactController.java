package springmvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import springmvc.model.User;
import springmvc.service.UserService;

@Controller
public class ContactController {
	@Autowired
	private UserService userService;
	@ModelAttribute
	public void commonDataFormodel(Model m ) {
		m.addAttribute("Header", "Welcom To registraion form");
		m.addAttribute("Desc", "Home page");
		
	}
	@RequestMapping("/contact")
	public String showForm() {
		return "contact";
		
	}
	
	
	
//Best way to use mapping @ModelAttribute 
	@RequestMapping(path="/processform",method =RequestMethod.POST)
	public String handleform(@ModelAttribute User user, Model model ){
				
		
		//for console o/p only
		System.out.println(user);
		
	int createdUser=	this.userService.createUser(user);
		model.addAttribute("msg", "User Created with id " +createdUser);
				
		return"success";
	}

}

/*
 * this by using @RequetParam
 * 
 * @RequestMapping(path="/processform",method =RequestMethod.POST) public String
 * handleform(
 * 
 * @RequestParam("email") String Email,
 * 
 * @RequestParam("userName") String UserName,
 * 
 * @RequestParam("password") String password, Model model)
 * 
 * {
 * 
 * 
 * // System.out.println("user email " + Email) ; //
 * System.out.println("user Name " + UserName) ; //
 * System.out.println("user password " + password) ;
 * 
 * User user =new User(); user.setEmail(Email); user.setUserName(UserName);
 * user.setPassword(password);
 * 
 * System.out.println(user);
 * 
 * //model.addAttribute("email", Email); // model.addAttribute("userName",
 * UserName); //model.addAttribute("password", password);
 * 
 * model.addAttribute("user",user);
 * 
 * return"success"; }
 * 
 */