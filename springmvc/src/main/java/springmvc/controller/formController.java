package springmvc.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.mysql.cj.callback.UsernameCallback;

import springmvc.model.User;
import springmvc.services.userServices;

@Controller
public class formController {
	
	@Autowired
	private userServices userServices;
	
	
	
	@ModelAttribute
	public void commondatamodel(Model m) {
		m.addAttribute("Header","kishan enterprises ");
		m.addAttribute("desc", "home for programmer");
		
		System.out.println("can be use this model for any other functions");
	}

	
	@RequestMapping("/contact")
	public String form() {
		System.out.println("inside form");
		return "form";
	}
	
	@RequestMapping(path="/processForm", method = RequestMethod.POST)
	public String handleForm(
			@RequestParam(name="email",required=false ) String Usremail,  
			@RequestParam("userName") String name,
			@RequestParam("password") String Upass , @ModelAttribute User user,Model model)  //new way of complete binding
			
	//@requestparam ki bydefault value required hoti h means value get honi chiye
	//when we want to get it as optional then it should be false e.g @Requestparam(name="email", required=false) String Uname
	
	
	{
		if(user.getUserName().isBlank()) {
			return "redirect:/contact";
		}
		
		
		int id = this.userServices.createUser(user);    //model vala user yaha pass hoga
		model.addAttribute("msg",id );
//		
//		User user=new User();   //all this implementation will be done by "@modelAttribute User user" and store it in user object
//		user.setEmail(Usremail);
//		user.setPassword(Upass);
//		user.setUserName(name);
														//all conplete binding
//		model.addAttribute("user", user);   // @model attrinute will store atomatically within the object we dont have to do this
		
//	System.out.println("user email is  "+ Usremail);	
//	System.out.println("user username is  "+ name);
//	System.out.println("user password is  "+ Upass);
		
		
		System.out.println(user);
//	model.addAttribute("email",Usremail);           			//single object binding
//	model.addAttribute("name",name);
//	model.addAttribute("password",Upass);
	
		//pura object bej dia instead of add single 
		
	
		return "success";
	}
	
	
	
}
