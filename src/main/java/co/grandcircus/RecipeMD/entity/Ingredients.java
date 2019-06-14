package co.grandcircus.RecipeMD.entity;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true)
public class Ingredients {
	
	private String text;

	public Ingredients() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Ingredients(String text) {
		super();
		this.text = text;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	@Override
	public String toString() {
		return "Ingredients [text=" + text + "]";
	}
	
}
