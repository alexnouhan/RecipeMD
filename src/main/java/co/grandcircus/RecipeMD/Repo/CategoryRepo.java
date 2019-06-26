package co.grandcircus.RecipeMD.Repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import co.grandcircus.RecipeMD.DBEntities.Category;

public interface CategoryRepo extends JpaRepository<Category, String> {
	
	List<Category> findByEmail(String email);

}
