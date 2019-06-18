package co.grandcircus.RecipeMD.DBEntities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Restrictions {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)

	private Integer id;
	private String name;
	private String email;
	private String category;

	public Restrictions() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Restrictions(Integer id, String name, String email, String category) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.category = category;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	@Override
	public String toString() {
		return "Restrictions [id=" + id + ", name=" + name + ", email=" + email + ", category=" + category + "]";
	}

}
