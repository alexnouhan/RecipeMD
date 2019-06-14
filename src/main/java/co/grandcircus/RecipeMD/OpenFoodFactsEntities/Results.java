package co.grandcircus.RecipeMD.OpenFoodFactsEntities;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true)
public class Results {
	
	
	private Product product;

	public Results() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Results(Product product) {
		super();
		this.product = product;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}


	

}
