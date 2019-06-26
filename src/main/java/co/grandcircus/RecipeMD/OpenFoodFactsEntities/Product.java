package co.grandcircus.RecipeMD.OpenFoodFactsEntities;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
@JsonIgnoreProperties(ignoreUnknown = true)
public class Product {

	private List<Ingredients> ingredients;
	private String product_name_en;
	private String brands;
	private String allergens_from_ingredients;
	
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Product(List<Ingredients> ingredients, String product_name_en, String brands,
			String allergens_from_ingredients) {
		super();
		this.ingredients = ingredients;
		this.product_name_en = product_name_en;
		this.brands = brands;
		this.allergens_from_ingredients = allergens_from_ingredients;
	}

	public List<Ingredients> getIngredients() {
		return ingredients;
	}

	public void setIngredients(List<Ingredients> ingredients) {
		this.ingredients = ingredients;
	}

	public String getProduct_name_en() {
		return product_name_en;
	}

	public void setProduct_name_en(String product_name_en) {
		this.product_name_en = product_name_en;
	}

	public String getAllergens_from_ingredients() {
		return allergens_from_ingredients;
	}

	public void setAllergens_from_ingredients(String allergens_from_ingredients) {
		this.allergens_from_ingredients = allergens_from_ingredients;
	}

	public String getBrands() {
		return brands;
	}

	public void setBrands(String brands) {
		this.brands = brands;
	}
	
	
	
}
