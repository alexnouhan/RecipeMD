// The UserProfileController stores the methods to input and output the data stored in the userprofile and restrictions database

package co.grandcircus.RecipeMD.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import co.grandcircus.RecipeMD.DBEntities.All_Restrictions;
import co.grandcircus.RecipeMD.DBEntities.Restrictions;
import co.grandcircus.RecipeMD.DBEntities.UserProfile;
import co.grandcircus.RecipeMD.Repo.All_RestrictionsRepo;
import co.grandcircus.RecipeMD.Repo.RestrictionsRepo;

@Controller
public class UserProfileController {
	RestTemplate rt = new RestTemplate();

	// Automatic injection of POJOs
	@Autowired
	RestrictionsRepo r;

	@Autowired
	All_RestrictionsRepo a;

	public static UserProfile up = new UserProfile("email@test.com");

	@RequestMapping("/user_profile")
	public ModelAndView displayUserProfile() {

		// SQL query in all ingredient restrictions for the current user and copy to
		// STRING list
		List<Restrictions> userRestrictions = r.findByEmail(up.getEmail());
		ArrayList<String> urs = new ArrayList<>();
		for (Restrictions i : userRestrictions) {
			urs.add(i.getName());
		}

		// SQL query list of ALL RESTRICTIONS and copy to STRING list
		List<All_Restrictions> ua_r = a.findAll();

		List<String> ua_rs = new ArrayList<>();

		for (All_Restrictions i : ua_r) {
			ua_rs.add(i.getRestriction());
		}

		// alphabetize ua_rs here
		ua_rs.sort(String.CASE_INSENSITIVE_ORDER);

		// SQL query of all custom allergens for current user
		List<Restrictions> cr = r.findByEmailAndCategory(up.getEmail(), "Custom");

		ArrayList<String> crs = new ArrayList<>();

		for (Restrictions i : cr) {
			crs.add(i.getName());
		}

		// alphabetize crs here
		crs.sort(String.CASE_INSENSITIVE_ORDER);

		ModelAndView mv = new ModelAndView("options", "res", urs);
		mv.addObject("allAllergies", ua_rs);
		mv.addObject("customAllergies", crs);
		return mv;
	}

	@RequestMapping("/user_profile_submission")
	public ModelAndView userProfileSubmission(
			@RequestParam(name = "medications", required = false) List<String> Medications,
			@RequestParam(name = "Diet_Options", required = false) List<String> Diet_Options,
			@RequestParam(name = "Religion_Options", required = false) List<String> Religion_Options,
			@RequestParam(name = "Food_Allergies", required = false) List<String> Allergies,
			@RequestParam(name = "Custom_Allergies", required = false) List<String> Custom) {

		// SQL query in all ingredient restrictions for the current user and copy to
		// STRING list
		List<Restrictions> userRestrictions = r.findByEmail(up.getEmail());
		List<String> urs = new ArrayList<>();
		for (Restrictions i : userRestrictions) {
			urs.add(i.getName());
		}

		// SQL query list of ALL RESTRICTIONS and copy to STRING list
		List<All_Restrictions> ua_r = a.findAll();
		List<String> ua_rs = new ArrayList<>();
		for (All_Restrictions i : ua_r) {
			ua_rs.add(i.getRestriction());
		}

		// Initialize temp list of new selections
		List<Restrictions> save = new ArrayList<>();

		// blocks of comparison for each category against the existing SQL user
		// restrictions list
		//
		try {
			for (String s : Medications) {
				save.add(new Restrictions(s, up.getEmail(), "Medication"));
			}
		} catch (NullPointerException e) {

		}

		try {
			if (!Diet_Options.isEmpty()) {
				for (String s : Diet_Options) {
					save.add(new Restrictions(s, up.getEmail(), "Diet"));
				}
			}
		} catch (NullPointerException e) {

		}

		try {
			if (!Religion_Options.isEmpty()) {
				for (String s : Religion_Options) {
					save.add(new Restrictions(s, up.getEmail(), "Religion"));
				}
			}
		} catch (NullPointerException e) {

		}

		try {
			if (!Allergies.isEmpty()) {
				for (String s : Allergies) {
					save.add(new Restrictions(s, up.getEmail(), "Allergies"));
				}
			}
		} catch (NullPointerException e) {

		}

		try {
			if (!Custom.isEmpty()) {
				for (String s : Custom) {
					if (s.isBlank()) {

					} else {
						save.add(new Restrictions(s, up.getEmail(), "Custom"));
					}
				}
			}
		} catch (NullPointerException e) {

		}

		// compare JSP page list with SQL table list and remove overlap
		for (Restrictions i : userRestrictions) {
			if (save.contains(i)) {
				userRestrictions.remove(i);
			}
		}

		// clean out SQL table
		r.deleteAll(userRestrictions);
		// write new selections to SQL table
		r.saveAll(save);

		return new ModelAndView("redirect:user_profile");
	}

	// this is for the button to return to the home page
	@RequestMapping("/leave_user_profile")
	public ModelAndView leaveUserProfile() {
		return new ModelAndView("index");
	}

}
