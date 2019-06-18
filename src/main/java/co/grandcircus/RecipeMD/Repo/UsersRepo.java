package co.grandcircus.RecipeMD.Repo;

import org.springframework.data.jpa.repository.JpaRepository;

import co.grandcircus.RecipeMD.DBEntities.UserProfile;

public interface UsersRepo extends JpaRepository<UserProfile, String>{

}
