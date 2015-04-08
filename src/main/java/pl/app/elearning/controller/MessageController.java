package pl.app.elearning.controller;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MessageController {

	@RequestMapping(value = "/messages", method = RequestMethod.GET)
	public String messagePage() {
		return "message";
	}

	@RequestMapping(value = "/messages/list", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE, consumes = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public String getMessages() {
		return "message";
	}

	@RequestMapping(value = "/messages/new", method = RequestMethod.GET)
	public String newMessagePage() {
		return "messageform";
	}

}
