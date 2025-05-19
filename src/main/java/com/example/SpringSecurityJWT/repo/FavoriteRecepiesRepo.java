package com.example.SpringSecurityJWT.repo;

import com.example.SpringSecurityJWT.model.FavoriteRecepi;
import com.example.SpringSecurityJWT.model.Users;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface FavoriteRecepiesRepo extends JpaRepository<FavoriteRecepi, Integer> {
    List<FavoriteRecepi> findByUser(Users user);
    void deleteByUserAndRecipeId(Users user, int recipeId);
    boolean existsByUserAndRecipeId(Users user, int recipeId);
}