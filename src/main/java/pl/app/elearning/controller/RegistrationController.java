package pl.app.elearning.controller;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import pl.app.elearning.domain.UserAccount;
import pl.app.elearning.service.UserAccountService;
import pl.app.elearning.support.JsonResponse;

@Controller
public class RegistrationController {

	@Autowired
	private UserAccountService userAccountService;

	private static final Logger log = LoggerFactory.getLogger(RegistrationController.class);
	private static final String REGISTRATION_PAGE = "registration";

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String getRegistrationForm(Model model) {
		model.addAttribute("account", new UserAccount());
		return REGISTRATION_PAGE;
	}

	@RequestMapping(value = "/registerUser", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE, consumes = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public JsonResponse postRegistrationForm(@Valid @RequestBody UserAccount userAccount, BindingResult result) {
		boolean valid = userAccountService.createAccount(userAccount, result);
		if (valid) {
			log.info("Account is created");
			return new JsonResponse("ok", "brak bledow");
		} else {
			log.info("An error occurred");
			return new JsonResponse("error", "bledy");
		}
	}

	@RequestMapping(value = "/availableLogin")
	@ResponseBody
	public String checkLogin(@RequestParam String login) {
		return userAccountService.isLoginExists(login).toString();
	}

	@RequestMapping(value = "/availableEmail")
	@ResponseBody
	public String checkEmail(@RequestParam String email) {
		return userAccountService.isEmailExists(email).toString();
	}

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		binder.setAllowedFields(new String[] { "name", "surname", "login", "email", "password", "passwordConfirmation" });
	}

}
