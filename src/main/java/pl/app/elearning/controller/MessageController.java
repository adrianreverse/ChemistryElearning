package pl.app.elearning.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MessageController {

	@RequestMapping(value = "/messages", method = RequestMethod.GET)
	public String messagePage() {
		return "message";
	}

	@RequestMapping(value = "/messages/new", method = RequestMethod.GET)
	public String newMessagePage() {
		return "messageform";
	}

}
