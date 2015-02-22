package pl.app.elearning.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import pl.app.elearning.service.ModeService;

@Controller
public class LearnModeController {

	@Autowired
	private ModeService modeService;

}
