package co.grandcircus.RecipeMD.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ScannerController {
	
	@RequestMapping("scanner")
	public ModelAndView scanner() {
		return new ModelAndView("scanner");
	}

}
