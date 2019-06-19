package co.grandcircus.RecipeMD.DBEntities;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class All_Restrictions {

	@Id
	private Integer id; 
	private String restriction;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getRestriction() {
		return restriction;
	}
	public void setRestriction(String restriction) {
		this.restriction = restriction;
	}
	public All_Restrictions(Integer id, String restriction) {
		super();
		this.id = id;
		this.restriction = restriction;
	}
	public All_Restrictions() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "All_Restrictions [id=" + id + ", restriction=" + restriction + "]";
	} 
	
	
}
