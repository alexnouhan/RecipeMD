package co.grandcircus.RecipeMD.controllers;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import co.grandcircus.RecipeMD.DBEntities.Restrictions;
import co.grandcircus.RecipeMD.RecipePuppyEntities.Recipe;
import co.grandcircus.RecipeMD.RecipePuppyEntities.RecipePuppy;
import co.grandcircus.RecipeMD.Repo.RestrictionsRepo;

@Controller
public class RecipeController {

	@Autowired
	RestrictionsRepo r;

	RestTemplate rt = new RestTemplate();

	// Jackson convereter is a media type -- changing media type from standard to
	// all on the recipepuppy API
	// This is also a placeholder that goes to the root of the API
	@RequestMapping("/recipes")
	public ModelAndView recipes() {
		List<HttpMessageConverter<?>> messageConverters = new ArrayList<HttpMessageConverter<?>>();
		// Add the Jackson Message converter
		MappingJackson2HttpMessageConverter converter = new MappingJackson2HttpMessageConverter();

		// Note: here we are making this converter to process any kind of response,
		// not only application/*json, which is the default behavior
		converter.setSupportedMediaTypes(Collections.singletonList(MediaType.ALL));
		messageConverters.add(converter);
		rt.setMessageConverters(messageConverters);

		RecipePuppy response = rt.getForObject("http://www.recipepuppy.com/api/", RecipePuppy.class);

		System.out.println(response.getResults());
		ModelAndView mv = new ModelAndView("recipes");
		mv.addObject("list", response.getResults());

		return mv;
	}

	// This is the one that we're gonna use
	// It receives the string and returns a list of recipes
	@RequestMapping("/recipeSearch")
	public ModelAndView recipeSearch(@RequestParam("ingredient") String in) {

		// SQL query in all ingredient restrictions for the current user and copy to
		// STRING list
		List<Restrictions> ur = r.findByEmail(UserProfileController.up.getEmail());
		ArrayList<String> urs = new ArrayList<>();
		for (Restrictions i : ur) {
			urs.add(i.getName().toLowerCase());
		}

		List<HttpMessageConverter<?>> messageConverters = new ArrayList<HttpMessageConverter<?>>();
		// Add the Jackson Message converter
		MappingJackson2HttpMessageConverter converter = new MappingJackson2HttpMessageConverter();

		// Note: here we are making this converter to process any kind of response,
		// not only application/*json, which is the default behaviour
		converter.setSupportedMediaTypes(Collections.singletonList(MediaType.ALL));
		messageConverters.add(converter);
		rt.setMessageConverters(messageConverters);

		RecipePuppy response = rt.getForObject("http://www.recipepuppy.com/api/?q=" + in, RecipePuppy.class);

		RecipePuppy response2 = rt.getForObject("http://www.recipepuppy.com/api/?q=" + in + "&p=2", RecipePuppy.class);

		RecipePuppy response3 = rt.getForObject("http://www.recipepuppy.com/api/?q=" + in + "&p=3", RecipePuppy.class);

		List<Recipe> list = new ArrayList<>();
		

		for (Recipe i : response.getResults()) {
			
			if (urs.isEmpty()) {
				list.add(i);
			} else {
				for (String j : urs) {
					if (i.getIngredients().toLowerCase().contains(j) | i.getThumbnail().isBlank()) {
					} else {
						list.add(i);
					}
				}
			}
		}
		
		for (Recipe i : response2.getResults()) {
			if (urs.isEmpty()) {
				list.add(i);
			} else {
				for (String j : urs) {
					if (i.getIngredients().toLowerCase().contains(j) | i.getThumbnail().isBlank()) {
					} else {
						list.add(i);
					}
				}
			}
		}
		
		for (Recipe i : response3.getResults()) {
			if (urs.isEmpty()) {
				list.add(i);
			} else {
				for (String j : urs) {
					if (i.getIngredients().toLowerCase().contains(j) | i.getThumbnail().isBlank()) {
					} else {
						list.add(i);
					}
				}
			}
		}

		ModelAndView mv = new ModelAndView("/recipes");
		mv.addObject("list", list.stream().distinct().collect(Collectors.toList()));

		return mv;
	}
}
