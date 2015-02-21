package pl.app.elearning.controller;

import org.apache.commons.lang3.BooleanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import pl.app.elearning.domain.UserAccount;
import pl.app.elearning.service.UserAccountService;

@Controller
public class UserAccountController {

	private static final String PROFILE = "profile";
	private static final String REDIRECT_ACOUNT = "redirect:/account";

	@Autowired
	private UserAccountService userAccountService;

	@RequestMapping(value = "/account", method = RequestMethod.GET)
	public ModelAndView userAccountProfile() {
		ModelAndView mav = new ModelAndView(PROFILE);
		UserAccount user = userAccountService.getUserByLogin(userAccountService.userLoginLoggedIn());
		mav.addObject("userProfile", user);
		return mav;
	}

	@RequestMapping(value = "/account/edit", method = RequestMethod.GET)
	public ModelAndView editUserAccountProfile() {
		ModelAndView mav = new ModelAndView("editprofile");
		UserAccount user = userAccountService.getUserByLogin(userAccountService.userLoginLoggedIn());
		mav.addObject("editUserProfile", user);
		return mav;
	}

	@RequestMapping(value = "/account/edit", method = RequestMethod.PUT, produces = MediaType.APPLICATION_JSON_VALUE, consumes = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public UserAccount editUserAccount(@RequestBody UserAccount user) {
		System.out.println(user.getId());
		UserAccount userAccout = userAccountService.getUserByLogin(userAccountService.userLoginLoggedIn());
		user.setId(userAccout.getId());
		UserAccount a = userAccountService.addOrUpdateUser(user);
		System.out.println(a);
		return a;
		// return userAccountService.addOrUpdateUser(user);
	}

	// @RequestMapping(value = "/account/edit/personaldata", method = RequestMethod.GET)
	// public ModelAndView editUserPersonalData() {
	// ModelAndView mav = new ModelAndView();
	// UserAccount user = userAccountService.getUserByLogin(userAccountService.userLoginLoggedIn());
	// mav.addObject("userProfile", user);
	// mav.setViewName("profile");
	// return mav;
	// }
	// /account/edit/personaldata
	// @RequestMapping(value = "/account/edit/personaldata", method = RequestMethod.GET)
	// public @ResponseBody Set<String> findAllStates() {
	// Set<String> a = new HashSet<String>();
	// a.add("adrian adrian");
	// return a;
	// }

	@RequestMapping(value = "/account/edit/personaldata", method = RequestMethod.GET)
	public ModelAndView editPersonalData() {
		ModelAndView mav = new ModelAndView();
		UserAccount user = userAccountService.getUserByLogin(userAccountService.userLoginLoggedIn());
		mav.addObject("editPersonalData", user);
		mav.setViewName("personaldataform");
		return mav;
	}

	@RequestMapping(value = "/account/edit/personaldata", method = RequestMethod.POST)
	public String postPersonalData(@ModelAttribute("editPersonalData")/* @Valid */UserAccount userAccount) {
		UserAccount user = userAccountService.getUserByLogin(userAccountService.userLoginLoggedIn());
		userAccount.setId(user.getId());
		userAccount.setLogin(user.getLogin());
		userAccount.setEmail(user.getEmail());
		userAccount.setPassword(user.getPassword());
		userAccountService.addOrUpdateUser(userAccount);
		return REDIRECT_ACOUNT;
	}

	@RequestMapping(value = "/account/edit/accountdata", method = RequestMethod.GET)
	public ModelAndView editAccountData() {
		ModelAndView mav = new ModelAndView();
		UserAccount user = userAccountService.getUserByLogin(userAccountService.userLoginLoggedIn());
		mav.addObject("accountData", user);
		mav.setViewName("accountdataform");
		return mav;
	}

	@RequestMapping(value = "/account/edit/accountdata", method = RequestMethod.POST)
	public String postAccountData(@ModelAttribute("accountData")/* @Valid */UserAccount userAccount) {
		UserAccount user = userAccountService.getUserByLogin(userAccountService.userLoginLoggedIn());
		userAccount.setId(user.getId());
		userAccount.setName(user.getName());
		userAccount.setSurname(user.getSurname());
		userAccount.setEmail(user.getEmail());
		userAccount.setPassword(user.getPassword());
		userAccountService.addOrUpdateUser(userAccount);
		return REDIRECT_ACOUNT;
	}

	@RequestMapping(value = "/account/edit/emaildata", method = RequestMethod.GET)
	public ModelAndView editEmailData() {
		ModelAndView mav = new ModelAndView();
		UserAccount user = userAccountService.getUserByLogin(userAccountService.userLoginLoggedIn());
		mav.addObject("editEmailData", user);
		mav.setViewName("emaildataform");
		return mav;
	}

	@RequestMapping(value = "/account/edit/emaildata", method = RequestMethod.POST)
	public String postEmailData(@ModelAttribute("editEmailData")/* @Valid */UserAccount userAccount) {
		UserAccount user = userAccountService.getUserByLogin(userAccountService.userLoginLoggedIn());
		userAccount.setId(user.getId());
		userAccount.setName(user.getName());
		userAccount.setSurname(user.getSurname());
		userAccount.setLogin(user.getLogin());
		userAccount.setPassword(user.getPassword());
		userAccountService.addOrUpdateUser(userAccount);
		return REDIRECT_ACOUNT;
	}

	@RequestMapping(value = "/account/edit/safetydata", method = RequestMethod.GET)
	public ModelAndView editSafetyData() {
		ModelAndView mav = new ModelAndView();
		UserAccount user = userAccountService.getUserByLogin(userAccountService.userLoginLoggedIn());
		mav.addObject("editSafetyData", user);
		mav.setViewName("safetydataform");
		return mav;
	}

	@RequestMapping(value = "/account/edit/safetydata", method = RequestMethod.POST)
	public String postSafetyData(@ModelAttribute("editSafetyData")/* @Valid */UserAccount userAccount) {
		userAccountService.addOrUpdateUser(userAccount);
		return REDIRECT_ACOUNT;
	}

	@RequestMapping(value = "/account/edit/systemdata", method = RequestMethod.GET)
	public ModelAndView editSystemData() {
		ModelAndView mav = new ModelAndView();
		UserAccount user = userAccountService.getUserByLogin(userAccountService.userLoginLoggedIn());
		mav.addObject("editSystemData", user);
		mav.setViewName("systemdataform");
		return mav;
	}

	@RequestMapping(value = "/account/edit/systemdata", method = RequestMethod.POST)
	public String postSystemData(@ModelAttribute("editSystemData")/* @Valid */UserAccount userAccount) {
		userAccountService.addOrUpdateUser(userAccount);
		return REDIRECT_ACOUNT;
	}

	@RequestMapping(value = "/availablePassword", method = RequestMethod.GET)
	@ResponseBody
	public String checkPassword(@RequestParam String oldpassword) {
		UserAccount user = userAccountService.getUserByLogin(userAccountService.userLoginLoggedIn());
		return userAccountService.isPasswordExists(user, oldpassword).toString();
	}

	@RequestMapping(value = "/account/edit/account/availableLogin")
	@ResponseBody
	public String checkLogin(@RequestParam String login) {
		String loggedInUser = userAccountService.userLoginLoggedIn();
		Boolean isLogin = userAccountService.isLoginExists(login);
		return login.equals(loggedInUser) ? BooleanUtils.negate(isLogin).toString() : isLogin.toString();
	}

	@RequestMapping(value = "/account/edit/account/availableEmail")
	@ResponseBody
	public String checkEmail(@RequestParam String email) {
		String loggedInUser = userAccountService.userLoginLoggedIn();
		UserAccount user = userAccountService.getUserByLogin(loggedInUser);
		Boolean isEmail = userAccountService.isEmailExists(email);
		return email.equals(user.getEmail()) ? BooleanUtils.negate(isEmail).toString() : isEmail.toString();
	}
}
