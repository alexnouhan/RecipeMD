package co.grandcircus.RecipeMD.entity;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true)
public class OpenFoodFacts {
	
	private String ingredients_tags;
	private String code;
	
	public OpenFoodFacts() {
		super();
		// TODO Auto-generated constructor stub
	}

	public OpenFoodFacts(String ingredients_tags, String code) {
		super();
		this.ingredients_tags = ingredients_tags;
		this.code = code;
	}

	public String getIngredients_tags() {
		return ingredients_tags;
	}

	public void setIngredients_tags(String ingredients_tags) {
		this.ingredients_tags = ingredients_tags;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	@Override
	public String toString() {
		return "OpenFoodFacts [ingredients_tags=" + ingredients_tags + ", code=" + code + "]";
	}
	
}
