package co.grandcircus.RecipeMD.controllers;


import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import co.grandcircus.RecipeMD.OpenFoodFactsEntities.Results;

// This is the controller for the OpenFood API 
// It will return a list of ingredients when given a barcode

@Controller
public class OpenFoodApiController {

	
	RestTemplate rt = new RestTemplate();
	
	// Placeholder -- has a hardcoded barcode
	@RequestMapping("/openfoods") 
	public ModelAndView displayFoodList() {
		
		Results openFoodAPI = rt.getForObject("https://world.openfoodfacts.org/api/v0/product/0737628064502.json", Results.class);
		
		ModelAndView mv = new ModelAndView("index", "list", openFoodAPI.getProduct().getIngredients());
		mv.addObject("name", openFoodAPI.getProduct().getProduct_name_en());
		mv.addObject("allergens", openFoodAPI.getProduct().getAllergens_from_ingredients());
		
		System.out.println(openFoodAPI);
		return mv;	
	}
	
	// Our search method -- returns an index with list of ingredients, allergens and name of product
	@RequestMapping("/search")
		public ModelAndView searchBarcode(@RequestParam("barcode") String b) {
		
		Results openFoodAPI = rt.getForObject("https://world.openfoodfacts.org/api/v0/product/"+ b + ".json", Results.class);
		
		ModelAndView mv = new ModelAndView("index", "list", openFoodAPI.getProduct().getIngredients());
		mv.addObject("name", openFoodAPI.getProduct().getProduct_name_en());
		mv.addObject("allergens", openFoodAPI.getProduct().getAllergens_from_ingredients());
		
		System.out.println(openFoodAPI);
		return mv;	
	}

}
