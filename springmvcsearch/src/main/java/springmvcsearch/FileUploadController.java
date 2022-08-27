package springmvcsearch;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;


@Controller
public class FileUploadController {

	@RequestMapping("/fileform")
	public String showUploadForm()
	{
		return "fileform";
	}
	
	@RequestMapping(path="/uploadimage" ,method=RequestMethod.POST)
	//@RequestMapping is for fetching and taking data
	//CommonMultipartfile is for giving information about the file what file and which file we have uploaded 
	//HttpSession for saving this file is our server
	//Model attribute for taking this to jsp
	public String fileupload(@RequestParam("profile") CommonsMultipartFile file,HttpSession s,Model m) throws IOException {
		System.out.println("file upload handler");
		System.out.println(file.getSize());
		System.out.println(file.getContentType());
		System.out.println(file.getName());
		System.out.println(file.getOriginalFilename());
		byte[] data =file.getBytes();
		//we have to save this file to server..and which location we want to add this file using path("web-inf to image+filec.seprator this is the
		//the total path of saved file and after that the original name of the file by using file.getOriginalFilename() this is gives us original name
		String path=s.getServletContext().getRealPath("/")+"WEB-INF" +File.separator + "resources" + File.separator + 
				"image" +File.separator + file.getOriginalFilename();
		System.out.println(path);
		try {
	
		FileOutputStream fos=new FileOutputStream(path);
		fos.write(data);
		fos.close();
		System.out.println("file uploaded");
		
		//adding file to jsp
		m.addAttribute("msg", "Uploade Successfully");
		m.addAttribute("filename", file.getOriginalFilename());
		m.addAttribute("msg", "Uploading Successfully");
		
		}catch(IOException e) {
			e.printStackTrace();
			System.out.println("uPLOADING eRORR");
			
		}
		
		
		return "filesuccess";
	}
}