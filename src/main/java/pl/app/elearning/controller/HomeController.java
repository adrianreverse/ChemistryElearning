package pl.app.elearning.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {

	private static final String HOME_PAGE = "redirect:/";

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String homePage() {
		return HOME_PAGE;
	}

	@RequestMapping(value = "/accessdenied", method = RequestMethod.GET)
	public String a() {
		return "accessdenied";
	}

	@RequestMapping(value = "/keyboard", method = RequestMethod.GET)
	public String keyboard() {
		return "keyboard";
	}

}
