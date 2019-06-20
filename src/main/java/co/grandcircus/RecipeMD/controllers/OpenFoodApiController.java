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
import co.grandcircus.RecipeMD.OpenFoodFactsEntities.Results;
import co.grandcircus.RecipeMD.Repo.RestrictionsRepo;

// This is the controller for the OpenFood API 
// It will return a list of ingredients when given a barcode

@Controller
public class OpenFoodApiController {

	@Autowired
	RestrictionsRepo r;

	RestTemplate rt = new RestTemplate();

	// Placeholder -- has a hardcoded barcode
	// For Testing Purposes Only
	@RequestMapping("/openfoods")
	public ModelAndView displayFoodList() {

		// SQL query in all ingredient restrictions for the current user and copy to
		// STRING list
		List<Restrictions> ur = r.findByEmail(UserProfileController.up.getEmail());
		ArrayList<String> urs = new ArrayList<>();
		for (Restrictions i : ur) {
			urs.add(i.getName().toLowerCase());
		}

		Results openFoodAPI = rt.getForObject("https://world.openfoodfacts.org/api/v0/product/0737628064502.json",
				Results.class);

		ModelAndView mv = new ModelAndView("ingredients", "list", openFoodAPI.getProduct().getIngredients());
		mv.addObject("name", openFoodAPI.getProduct().getProduct_name_en());
		mv.addObject("allergens", openFoodAPI.getProduct().getAllergens_from_ingredients());
		mv.addObject("barcode", "0737628064502");

		// Connecting the restriction database for the current use to the allergen search result
		String[] allergens = openFoodAPI.getProduct().getAllergens_from_ingredients().split(",");

		for (String i : allergens) {
			if (urs.contains(i.toLowerCase())) {
				mv.addObject("redlight", true);
			}
			System.out.println(i);
		}
System.out.println(urs);
		return mv;
	}

	// Our search method -- returns an index with list of ingredients, allergens and
	// name of product
	// This mapping is called by the scanner JSP and displays the item based on the
	// scanned bar code
	@RequestMapping("/search")
	public ModelAndView searchBarcode(@RequestParam("barcode") String b) {

		// SQL query in all ingredient restrictions for the current user and copy to
		// STRING list
		List<Restrictions> ur = r.findByEmail(UserProfileController.up.getEmail());
		ArrayList<String> urs = new ArrayList<>();
		for (Restrictions i : ur) {
			urs.add(i.getName().toLowerCase());
		}
		
		Results openFoodAPI = rt.getForObject("https://world.openfoodfacts.org/api/v0/product/" + b + ".json",
				Results.class);

		ModelAndView mv = new ModelAndView("ingredients", "list", openFoodAPI.getProduct().getIngredients());
		mv.addObject("name", openFoodAPI.getProduct().getProduct_name_en());
		mv.addObject("allergens", openFoodAPI.getProduct().getAllergens_from_ingredients());
		mv.addObject("barcode", b);

		String[] allergens = openFoodAPI.getProduct().getAllergens_from_ingredients().split(",");

		for (String i : allergens) {
			if (urs.contains(i.toLowerCase())) {
				mv.addObject("redlight", true);
			}
			
		}
		
		return mv;
	}

}
