package co.grandcircus.RecipeMD.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserProfileController {
	RestTemplate rt = new RestTemplate();
	
	@RequestMapping("/user_profile")
	public ModelAndView displayUserProfile() {
		return new ModelAndView("dropdownboxes");
	}

	
}
