package pl.app.elearning.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {

	private static final String HOME_PAGE = "redirect:/home";

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String redirectToHomePage() {
		return HOME_PAGE;
	}

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String homePage() {
		return "index";
	}

	@RequestMapping(value = "/accessdenied", method = RequestMethod.GET)
	public String a() {
		return "accessdenied";
	}

}
