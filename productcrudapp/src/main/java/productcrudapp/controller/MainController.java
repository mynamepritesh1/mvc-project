package productcrudapp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import productcrudapp.model.Product;
import productcrudapp.dao.productDao;



@Controller
public class MainController {
	
	@Autowired
	private productDao productDao;

	@RequestMapping("/")
	public String home(Model m) {
		List<Product> products = productDao.getProducts();
		m.addAttribute("product",products);
		
		return "index";
	}
	
	@RequestMapping("/add_product")
	public String addproduct(Model m) {
		m.addAttribute("title" , "AddProduct");
		
		return "add_product_form";
	}
	
 //Handle at product form
	@RequestMapping( value ="/handle-product", method = RequestMethod.POST)
	public RedirectView handleProduct(@ModelAttribute Product product,HttpServletRequest request) {
		
		System.out.println(product);
		productDao.createproduct(product);
		RedirectView redirectView =new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/");
		
		return redirectView;
		
	}
	//delete Handler
	@RequestMapping("/delete/{productid}")
	public RedirectView deleteProduct(@PathVariable("productid") int productId,HttpServletRequest request) {
		this.productDao.deleteProduct(productId);
		RedirectView redirectView =new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/");
		
		return redirectView;
		
	}
	//Update Handler
		@RequestMapping("/update/{productid}")
		public String updateForm(@PathVariable("productid")int pid,Model model)
		{
			
	Product product =	this.productDao.getProduct(pid);
		model.addAttribute("product",product);
			return "update_form";
			
		}
}
