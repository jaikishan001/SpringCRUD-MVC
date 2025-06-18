package springmvc.controller;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.config.annotation.RedirectViewControllerRegistration;
import org.springframework.web.servlet.view.RedirectView;

@Controller
//@RequestMapping("/first") 	//sabse pahle ye url chalega
public class homeController {

	// using model object
	@RequestMapping("/home") // bydefault get method
	public String home(Model model) {

		model.addAttribute("name", "kishan yadav");
		model.addAttribute("id", 55);

		List<String> friends = new ArrayList<String>();
		friends.add("ram");
		friends.add("kishan");
		friends.add("lalan");
		model.addAttribute("f", friends);

		System.out.println("i am in home page");

		return "homes";
	}

	@RequestMapping("/about")
	public String about() {
		System.out.println("insode about page");

		return "about";
	}

	// using ModelAndview object

	@RequestMapping(path = "/help", method = RequestMethod.GET)
	public ModelAndView help() {

		// creating model and view object
		ModelAndView modNv = new ModelAndView();

		// setting data
		modNv.addObject("name", "uttam");
		modNv.addObject("rolno", 22);

		// setting view (page name)
		modNv.setViewName("help");

		List<Integer> list = new ArrayList<Integer>();
		list.add(55);
		list.add(56);
		list.add(22);
		modNv.addObject("marks", list);

		LocalDateTime now = LocalDateTime.now();
		modNv.addObject("time", now);

		return modNv;
	}

	@RequestMapping("/move")
	public String move() {

		return "form";
	}

	@RequestMapping("/move1")
	public String move1() {

		return "help";
	}
	
	@RequestMapping("/bb")
	public String bb() {
		return "complex_form";
	}

	@RequestMapping("/one")
	public RedirectView one() {

		System.out.println("this is inside one and redirect to enjoy");
		RedirectView rd = new RedirectView();

		rd.setUrl("help");
		return rd; // another method for redirect in spring mvc
	}

	@RequestMapping("/two")
	public String two() {
		System.out.println("this is second handler[enjoy]");
		return "redirect:/complex_form"; // redirect to another view
	}

	@RequestMapping("/move2")
	public String move2() {

		return "about";
	}
}
