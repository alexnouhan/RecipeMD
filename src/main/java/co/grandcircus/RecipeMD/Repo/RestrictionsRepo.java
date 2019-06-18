package co.grandcircus.RecipeMD.Repo;


import org.springframework.data.jpa.repository.JpaRepository;

import co.grandcircus.RecipeMD.DBEntities.Restrictions;

public interface RestrictionsRepo extends JpaRepository<Restrictions, String>{

}
