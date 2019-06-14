package co.grandcircus.RecipeMD.entity;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
@JsonIgnoreProperties(ignoreUnknown = true)
public class Product {

	private List<Ingredients> ingredients;
	private String product_name_en;
	
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Product(List<Ingredients> ingredients, String product_name_en) {
		super();
		this.ingredients = ingredients;
		this.product_name_en = product_name_en;
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

	@Override
	public String toString() {
		return "Product [ingredients=" + ingredients + ", product_name_en=" + product_name_en + "]";
	}
	
}
