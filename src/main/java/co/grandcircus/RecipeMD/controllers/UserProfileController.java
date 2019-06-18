package co.grandcircus.RecipeMD.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserProfileController {
	RestTemplate rt = new RestTemplate();
	@RequestMapping("/user_profile")
	public ModelAndView displayUserProfile() {
		// check to make sure they're not empty
		// if not empty split based on the , for each category and assign to an array
		return new ModelAndView("options");
	}
	
	@RequestMapping("/user_profile_submission")
	public ModelAndView userProfileSubmission(@RequestParam(name="medications", required = false) String medications, @RequestParam(name="Diet_Options", required = false) String Diet_Options, @RequestParam(name="Religion_Options", required = false) String Religion_Options) {
		// check to make sure they're not empty
		// if not empty split based on the , for each category and assign to an array
		System.out.println(medications);
		return new ModelAndView("options");
	}

	
}
