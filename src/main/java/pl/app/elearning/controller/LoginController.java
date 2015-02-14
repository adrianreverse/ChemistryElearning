package pl.app.elearning.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import pl.app.elearning.i18n.I18n;
import pl.app.elearning.service.UserAccountService;

@Controller
public class LoginController {

	@Autowired
	private UserAccountService userAccountService;

	private static final String LOGIN_PAGE = "login";
	private static final String LOGIN_FAILED_PAGE = "loginfailed";

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView loginForm(@RequestParam(value = "error", required = false) String error) {
		ModelAndView model = new ModelAndView();
		if (error != null) {
			model.addObject("error", I18n.getKeyValue("error.invalidLoginOrPassword"));
			model.setViewName(LOGIN_FAILED_PAGE);
		} else {
			model.setViewName(LOGIN_PAGE);
		}
		return model;
	}

	// @RequestMapping(value = "/loginfailed", method = RequestMethod.GET)
	// public String loginFailed(Model model) {
	// return LOGIN_FAILED_PAGE;
	// }

	// @RequestMapping(value = "/correctLoginAndPassword")
	// @ResponseBody
	// public String checkLoginAndPassword(@RequestParam String login, @RequestParam String password) {
	// return userAccountService.isCredentialsCorrect(login, password).toString();
	// }

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		binder.setAllowedFields(new String[] { "login", "password" });
	}
}
