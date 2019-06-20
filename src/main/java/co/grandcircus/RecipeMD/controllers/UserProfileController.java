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

	@Autowired
	RestrictionsRepo r;

	@Autowired
	All_RestrictionsRepo a;

	public UserProfile up = new UserProfile("email@test.com");

	@RequestMapping("/user_profile")
	public ModelAndView displayUserProfile() {

		List<Restrictions> ur = r.findByEmail(up.getEmail());
		ArrayList<String> urs = new ArrayList<>();
		
		for (Restrictions i : ur) {
			urs.add(i.getName());
		}

		List<All_Restrictions> ua_r = a.findAll(); 
		List<String> ua_rs = new ArrayList<>();
		
		for (All_Restrictions i : ua_r) {
			ua_rs.add(i.getRestriction());
		}
		
		System.out.println(urs);
		
		ModelAndView mv = new ModelAndView("options", "res", urs);
		mv.addObject("allAllergies", ua_rs);
		return mv;
	}
	

	@RequestMapping("/user_profile_submission")
	public ModelAndView userProfileSubmission(
			@RequestParam(name = "medications", required = false) List<String> Medications,
			@RequestParam(name = "Diet_Options", required = false) List<String> Diet_Options,
			@RequestParam(name = "Religion_Options", required = false) List<String> Religion_Options,
			@RequestParam(name = "Food_Allergies", required = false) List<String> Allergies) {

		//SQL query in all ingredient restrictions for the current user and copy to STRING list
		List<Restrictions> ur = r.findByEmail(up.getEmail());
		List<String> urs = new ArrayList<>();
		for (Restrictions i : ur) {
			urs.add(i.getName());
		}

		//SQL query list of ALL RESTRICTIONS and copy to STRING list
		List<All_Restrictions> ua_r = a.findAll(); 
		List<String> ua_rs = new ArrayList<>();		
		for (All_Restrictions i : ua_r) {
			ua_rs.add(i.getRestriction());
		}
		
		//Initialize temp list of new selections
		List<Restrictions> save = new ArrayList<>();
		
		//blocks of comparison for each category against the existing SQL user restrictions list
		//
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
						//Restrictions tempr = new Restrictions(e, up.getEmail(), "Allergies");
						save.add(new Restrictions(e, up.getEmail(), "Allergies"));
						//r.save(tempr);
					}
				}
			}
		} catch (NullPointerException e) {

		}
		
		for (Restrictions i : ur) {
			 if (save.contains(i)) {
				 ur.remove(i);
			 }
		}
		
		r.deleteAll(ur);
		
		r.saveAll(save);

		return new ModelAndView("redirect:user_profile");
	}
	
	@RequestMapping("/leave_user_profile")
	public ModelAndView leaveUserProfile(
			@RequestParam(name = "medications", required = false) List<String> Medications,
			@RequestParam(name = "Diet_Options", required = false) List<String> Diet_Options,
			@RequestParam(name = "Religion_Options", required = false) List<String> Religion_Options,
			@RequestParam(name = "Food_Allergies", required = false) List<String> Allergies) {


		List<Restrictions> ur = r.findByEmail(up.getEmail());
		List<String> urs = new ArrayList<>();

		for (Restrictions i : ur) {
			urs.add(i.getName());
		}

		List<All_Restrictions> ua_r = a.findAll(); 
		List<String> ua_rs = new ArrayList<>();
		
		for (All_Restrictions i : ua_r) {
			ua_rs.add(i.getRestriction());
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
		

		return new ModelAndView("index");
	}

}
