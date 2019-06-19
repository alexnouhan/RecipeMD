package co.grandcircus.RecipeMD.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class ScannerController {
	
	@GetMapping("scanner")
	public ModelAndView scanner() {
		return new ModelAndView("scanner");
	}

}
