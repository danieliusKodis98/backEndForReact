package com.example.SpringSecurityJWT.service;

import com.example.SpringSecurityJWT.model.FavoriteRecepi;
import com.example.SpringSecurityJWT.model.Users;
import com.example.SpringSecurityJWT.repo.FavoriteRecepiesRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FavoriteRecepiesService {
    @Autowired
    private FavoriteRecepiesRepo repo;

    public void addFavorite(int recipeId, Users user) {
        if (!repo.existsByUserAndRecipeId(user, recipeId)) {
            repo.save(new FavoriteRecepi(recipeId, user));
        }
    }

    public void removeFavorite(int recipeId, Users user) {
        repo.deleteByUserAndRecipeId(user, recipeId);
    }

    public List<FavoriteRecepi> getFavorites(Users user) {
        return repo.findByUser(user);
    }

}
