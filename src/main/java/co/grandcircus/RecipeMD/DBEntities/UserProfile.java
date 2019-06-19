package co.grandcircus.RecipeMD.DBEntities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity

public class UserProfile {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private String email;

	public UserProfile() {
		super();
		// TODO Auto-generated constructor stub
	}

	public UserProfile(Integer id, String email) {
		super();
		this.id = id;
		this.email = email;
	}
	
	public UserProfile(String email) {
		super();
		this.email = email;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "UserProfile [id=" + id + ", email=" + email + "]";
	}

}
