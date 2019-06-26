package co.grandcircus.RecipeMD.DBEntities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Category {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private String category;
	private String email;
	
	public Category() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Category(Integer id, String category, String email) {
		super();
		this.id = id;
		this.category = category;
		this.email = email;
	}
	
	public Category(String category, String email) {
		super();
		this.category = category;
		this.email = email;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	

	
}
