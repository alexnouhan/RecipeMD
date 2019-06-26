// The UserProfileController stores the methods to input and output the data stored in the userprofile and restrictions database

package co.grandcircus.RecipeMD.controllers;

import java.util.ArrayList;
import java.util.Arrays;
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
import co.grandcircus.RecipeMD.Repo.CategoryRepo;
import co.grandcircus.RecipeMD.Repo.RestrictionsRepo;

@Controller
public class UserProfileController {
	RestTemplate rt = new RestTemplate();

	// Automatic injection of POJOs
	@Autowired
	RestrictionsRepo r;

	@Autowired
	All_RestrictionsRepo a;
	
	@Autowired
	CategoryRepo c;

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

		// Hardcoded lists of CATEGORY restrictions
		List<String> antibiotics = Arrays.asList(new String[] { "Dairy", "Cream" });
		List<String> oralContraception = Arrays.asList(new String[] { "Grapefruit" });
		List<String> CA2Channel = Arrays.asList(new String[] { "Grapefruit", "Caffeine", "Bread" });
		List<String> levothryroxine = Arrays.asList(new String[] { "Grapefruit", "Soy", "Cotton Seed Meal", "Walnuts",
				"Dietary Fiber", "Calcium", "Calcium Fortified Juices" });
		List<String> tamoxifen = Arrays.asList(new String[] { "Sesame Seeds", "Grapefruit", "Tangerines", "Soy" });
		List<String> mercaptopurine = Arrays.asList(new String[] { "Alcohol", "Cream", "Dairy" });
		List<String> celiprolo = Arrays.asList(new String[] { "Orange" });
		List<String> warfarin = Arrays.asList(new String[] { "Kale", "Spinach", "Broccoli", "Onions", "Cranberry" });
		List<String> insulin = Arrays.asList(new String[] { "Alcohol" });
		List<String> statin = Arrays.asList(new String[] { "Grapefruit" });
		List<String> acetaminophen = Arrays.asList(new String[] { "Alcohol" });
		List<String> methyphenidate = Arrays.asList(new String[] { "Broccoli", "Strawberry", "Potato", "Tomato" });

		
		// hardcoded list of diet options
		List<String> ketoDiet = Arrays.asList(new String[] { "Milk", "Cream", "Dairy", "Potato", "Corn", "Sugar",
				"Maple", "Marshmellow", "Honey", "Gluten", "Fructose", "Alcohol", "Grains", "Legumes" });
		List<String> paleoDiet = Arrays
				.asList(new String[] { "Sugar", "Fructose", "Milk", "Cream", "Dairy", "Alcohol" });
		List<String> whole30 = Arrays.asList(new String[] { "Dairy", "Cream", "Milk", "Sugar", "Fructose", "Maple",
				"Flour", "Legumes", "Alcohol", "Grains", "Honey" });
		List<String> mediterranean = Arrays
				.asList(new String[] { "Sugar", "Fructose", "Alcohol", "Dairy", "Cream", "Milk", "Maple", "Honey" });

		
		// hardcoded list of religious options
		List<String> seventhDayAdventist = Arrays
				.asList(new String[] { "Steak", "Pork", "Bacon", "Beef", "Meat", "Chicken", "Fish", "Alcohol" });
		List<String> mormonism = Arrays.asList(new String[] { "Alcohol", "Caffeine", "Tea", "Chocolate" });
		List<String> judaism = Arrays.asList(
				new String[] { "Marshmellow", "Gelatin", "Pork", "Scallops", "Shellfish", "Shrimp", "Bacon", "Clams",
						"Crab", "Crayfish", "Mussels", "Oysters", "Lobster", "Pelican", "Eagle", "Owl", "Swan" });
		List<String> islam = Arrays.asList(new String[] { "Pork", "Bacon", "Alcohol", "Gelatin", "Marshmellow" });
		List<String> hinduism = Arrays
				.asList(new String[] { "Meat", "Beef", "Pork", "Bacon", "Chicken", "Gelatin", "Marshmellow" });
		List<String> buddhism = Arrays.asList(new String[] {"Alcohol", "Bacon", "Beef", "Chicken", "Crab", "Crayfish", "Fish", "Lamb", "Lobster", "Meat", "Mussels", "Oysters", "Pork", "Scallops", "Shellfish", "Shrimp", "Steak"}); 
		
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
			// conditionals for each hardcoded INTERACTION SET of restrictions
			// a for loop in every if statement to put all the hardcoded values in the DB
			// table
			for (String s : Medications) {
				if (s.equalsIgnoreCase("Antibiotics")) {
					for (String z : antibiotics) {
						save.add(new Restrictions(z, up.getEmail(), "Medication"));
					}
				} else if (s.equalsIgnoreCase("Oral Contraception")) {
					for (String z : oralContraception) {
						save.add(new Restrictions(z, up.getEmail(), "Medication"));
					}
				} else if (s.equalsIgnoreCase("CA2Channel")) {
					for (String z : CA2Channel) {
						save.add(new Restrictions(z, up.getEmail(), "Medication"));
					}
				} else if (s.equalsIgnoreCase("Levothryroxine")) {
					for (String z : levothryroxine) {
						save.add(new Restrictions(z, up.getEmail(), "Medication"));
					}
				} else if (s.equalsIgnoreCase("Tamoxifen")) {
					for (String z : tamoxifen) {
						save.add(new Restrictions(z, up.getEmail(), "Medication"));
					}
				} else if (s.equalsIgnoreCase("Mercaptopurine")) {
					for (String z : mercaptopurine) {
						save.add(new Restrictions(z, up.getEmail(), "Medication_Mercaptopurine"));
					}
				} else if (s.equalsIgnoreCase("Celiprolo")) {
					for (String z : celiprolo) {
						save.add(new Restrictions(z, up.getEmail(), "Medication"));
					}
				} else if (s.equalsIgnoreCase("Warfarin")) {
					for (String z : warfarin) {
						save.add(new Restrictions(z, up.getEmail(), "Medication"));
					}
				} else if (s.equalsIgnoreCase("Insulin")) {
					for (String z : insulin) {
						save.add(new Restrictions(z, up.getEmail(), "Medication"));
					}
				} else if (s.equalsIgnoreCase("Statin")) {
					for (String z : statin) {
						save.add(new Restrictions(z, up.getEmail(), "Medication"));
					}
				} else if (s.equalsIgnoreCase("Acetaminophen")) {
					for (String z : acetaminophen) {
						save.add(new Restrictions(z, up.getEmail(), "Medication"));
					}
				} else if (s.equalsIgnoreCase("Methyphenidate")) {
					for (String z : methyphenidate) {
						save.add(new Restrictions(z, up.getEmail(), "Medication"));
					}
				}
			}

		} catch (NullPointerException e) {

		}

		try {

			for (String s : Diet_Options) {
				if (s.equalsIgnoreCase("Keto Diet")) {
					for (String z : ketoDiet) {
						save.add(new Restrictions(z, up.getEmail(), "Diet_Options"));
					}
				} else if (s.equalsIgnoreCase("Paleo Diet")) {
					for (String z : paleoDiet) {
						save.add(new Restrictions(z, up.getEmail(), "Diet_Options"));
					}
				} else if (s.equalsIgnoreCase("Whole 30")) {
					for (String z : whole30) {
						save.add(new Restrictions(z, up.getEmail(), "Diet_Options"));
					}
				} else if (s.equalsIgnoreCase("Mediterranean")) {
					for (String z : mediterranean) {
						save.add(new Restrictions(z, up.getEmail(), "Diet_Options"));
					}
				}

			}

		} catch (NullPointerException e) {

		}

		try {
			for (String s : Religion_Options) {
				if (s.equalsIgnoreCase("Seventh-Day Adventists")) {
					for (String z : seventhDayAdventist) {
						save.add(new Restrictions(z, up.getEmail(), "Religion_Options"));
					}
				} else if (s.equalsIgnoreCase("Mormonism")) {
					for (String z : mormonism) {
						save.add(new Restrictions(z, up.getEmail(), "Religion_Options"));
					}
				} else if (s.equalsIgnoreCase("Judaism")) {
					for (String z : judaism) {
						save.add(new Restrictions(z, up.getEmail(), "Religion_Options"));
					}
				} else if (s.equalsIgnoreCase("Islam")) {
					for (String z : islam) {
						save.add(new Restrictions(z, up.getEmail(), "Religion_Options"));
					}
				} else if (s.equalsIgnoreCase("Hinduism")) {
					for (String z : hinduism) {
						save.add(new Restrictions(z, up.getEmail(), "Religion_Options"));
					}
				} else if (s.equalsIgnoreCase("Buddhism")) {
					for (String z : buddhism) {
						save.add(new Restrictions(z, up.getEmail(), "Religion_Options"));
					}
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
