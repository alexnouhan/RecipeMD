package co.grandcircus.RecipeMD.controllers;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import org.springframework.http.MediaType;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import co.grandcircus.RecipeMD.RecipePuppyEntities.RecipePuppy;

@Controller
public class RecipeController {

	RestTemplate rt = new RestTemplate();

	@RequestMapping("/recipes")
	public ModelAndView recipes() {
		List<HttpMessageConverter<?>> messageConverters = new ArrayList<HttpMessageConverter<?>>();
		// Add the Jackson Message converter
		MappingJackson2HttpMessageConverter converter = new MappingJackson2HttpMessageConverter();

		// Note: here we are making this converter to process any kind of response,
		// not only application/*json, which is the default behaviour
		converter.setSupportedMediaTypes(Collections.singletonList(MediaType.ALL));
		messageConverters.add(converter);
		rt.setMessageConverters(messageConverters);

		RecipePuppy response = rt.getForObject("http://www.recipepuppy.com/api/", RecipePuppy.class);
		System.out.println(response.getResults());
		ModelAndView mv = new ModelAndView("recipes");
		mv.addObject("list" , response.getResults());

		return mv;
	}

	@RequestMapping("/recipeSearch")
	public ModelAndView recipeSearch(@RequestParam("ingredient") String in) {

		List<HttpMessageConverter<?>> messageConverters = new ArrayList<HttpMessageConverter<?>>();
		// Add the Jackson Message converter
		MappingJackson2HttpMessageConverter converter = new MappingJackson2HttpMessageConverter();

		// Note: here we are making this converter to process any kind of response,
		// not only application/*json, which is the default behaviour
		converter.setSupportedMediaTypes(Collections.singletonList(MediaType.ALL));
		messageConverters.add(converter);
		rt.setMessageConverters(messageConverters);

		RecipePuppy response = rt.getForObject("http://www.recipepuppy.com/api/?q=" + in, RecipePuppy.class);
		System.out.println(response.getResults());
		ModelAndView mv = new ModelAndView("/recipes");
		mv.addObject("list" , response.getResults());

		return mv;
	}
}
