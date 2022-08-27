package springmvcsearch;

import org.springframework.http.HttpStatus;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;

@ControllerAdvice
public class MyExceptionHandler {
	//handling Exception in our spring mvc
		//@ResponseStatus(value=HttpStatus.INTERNAL_SERVER_ERROR) which shows the internal server error 
		@ResponseStatus(value=HttpStatus.INTERNAL_SERVER_ERROR)
		@ExceptionHandler(value= NullPointerException.class)
		public String exceptionHanderNull(Model m) {
			m.addAttribute("msg" , "Exception has occured");
			
			return "null_page";
			
		}
		@ResponseStatus(value=HttpStatus.INTERNAL_SERVER_ERROR)
		@ExceptionHandler(value= NumberFormatException.class)
		public String exceptionHanderNumber(Model m) {
			m.addAttribute("msg" , "Exception has occured");
			
			return "null_page";


}
		
		@ResponseStatus(value=HttpStatus.INTERNAL_SERVER_ERROR)
		@ExceptionHandler(value= Exception.class)
		public String exceptionHanderGeneric(Model m) {
			m.addAttribute("msg" , "Exception has occured");
			
			return "null_page";
		}
}
