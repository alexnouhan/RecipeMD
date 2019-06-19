package co.grandcircus.RecipeMD.Repo;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import co.grandcircus.RecipeMD.DBEntities.Restrictions;

public interface RestrictionsRepo extends JpaRepository<Restrictions, String>{
	
	List<Restrictions> findByEmail(String email);

}
