package co.grandcircus.RecipeMD.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import co.grandcircus.RecipeMD.DBEntities.Restrictions;
import co.grandcircus.RecipeMD.DBEntities.UserProfile;
import co.grandcircus.RecipeMD.Repo.RestrictionsRepo;

@Controller
public class UserProfileController {
	RestTemplate rt = new RestTemplate();

	@Autowired
	RestrictionsRepo r;

	public UserProfile up = new UserProfile("email@test.com");

	@RequestMapping("/user_profile")
	public ModelAndView displayUserProfile() {

		List<Restrictions> ur = r.findByEmail(up.getEmail());
		System.out.println(ur);
		
		ArrayList<String> urs = new ArrayList<>();
		System.out.println(urs);
		System.out.println(urs.contains("Alcohol"));

		for (Restrictions i : ur) {
			urs.add(i.getName());
		}

		return new ModelAndView("options", "res", urs);
	}

//	@RequestMapping("/user_profile_submission")
//	public ModelAndView userProfileSubmission(@RequestParam(name="medications", required = false) String medications, @RequestParam(name="Diet_Options", required = false) String Diet_Options, @RequestParam(name="Religion_Options", required = false) String Religion_Options) {
//		// check to make sure they're not empty
//		// if not empty split based on the , for each category and assign to an array
//		System.out.println(medications);
//		return new ModelAndView("options");
//	}

	@RequestMapping("/user_profile_submission")
	public ModelAndView userProfileSubmission(
			@RequestParam(name = "medications", required = false) List<String> Medications,
			@RequestParam(name = "Diet_Options", required = false) List<String> Diet_Options,
			@RequestParam(name = "Religion_Options", required = false) List<String> Religion_Options,
			@RequestParam(name = "Food_Allergies", required = false) List<String> Allergies) {

		List<Restrictions> ur = r.findByEmail(up.getEmail());
		List<String> urs = new ArrayList<>();

		for (Restrictions i : ur) {
			urs.add(i.getName());
		}

		try {
			for (String e : Medications) {
				if (!urs.contains(e)) {
					Restrictions tempr = new Restrictions(e, up.getEmail(), "Medication");
					r.save(tempr);
				}
			}
		} catch (NullPointerException e) {

		}

		try {
			if (!Diet_Options.isEmpty()) {
				for (String e : Diet_Options) {
					if (!urs.contains(e)) {
						Restrictions tempr = new Restrictions(e, up.getEmail(), "Diet");
						r.save(tempr);
					}
				}
			}
		} catch (NullPointerException e) {

		}

		try {
			if (!Religion_Options.isEmpty()) {
				for (String e : Religion_Options) {
					if (!urs.contains(e)) {
						Restrictions tempr = new Restrictions(e, up.getEmail(), "Religion");
						r.save(tempr);
					}
				}
			}
		} catch (NullPointerException e) {

		}

		try {
			if (!Allergies.isEmpty()) {
				for (String e : Allergies) {
					if (!urs.contains(e)) {
						Restrictions tempr = new Restrictions(e, up.getEmail(), "Allergies");
						r.save(tempr);
					}
				}
			}
		} catch (NullPointerException e) {

		}

		return new ModelAndView("options");
	}

}
