package springmvcsearch;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class SearchController {

	// if we want to fire value in our url (google) then is directly fetche to our
	// console or o/p wec can pass anything name or whatever
	// it is help for that if client want to send the data then he can send the data
	// from url also and after that we will modify it
	@RequestMapping("/user/{userId}")
	public String getUserDetail(@PathVariable("userId") int userId)

	{
		System.out.println(userId);
		return "home";
	}

	@RequestMapping("/home")
	public String home() {
		System.out.println("its home view");

		// create error for excption handling
//	String str=null;
		// System.out.println(str.length());

		return "home";
	}

	@RequestMapping("/search")
	public RedirectView search(@RequestParam("querybox") String query) {
		String url = "http://www.google.com/search?q=" + query;
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(url);
		return redirectView;

	}

}
