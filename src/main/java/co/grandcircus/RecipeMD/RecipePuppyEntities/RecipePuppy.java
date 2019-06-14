package co.grandcircus.RecipeMD.RecipePuppyEntities;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown=true)
public class RecipePuppy {

	
private List<Recipe> results;

public List<Recipe> getResults() {
	return results;
}

public void setResults(List<Recipe> results) {
	this.results = results;
}

public RecipePuppy(List<Recipe> results) {
	super();
	this.results = results;
}

public RecipePuppy() {
	super();
	// TODO Auto-generated constructor stub
}




	
	
	
}
