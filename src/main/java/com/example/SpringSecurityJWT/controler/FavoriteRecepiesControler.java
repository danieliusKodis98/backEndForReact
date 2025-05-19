package com.example.SpringSecurityJWT.controler;

import com.example.SpringSecurityJWT.model.FavoriteRecepi;
import com.example.SpringSecurityJWT.model.UserPrincipal;
import com.example.SpringSecurityJWT.model.Users;
import com.example.SpringSecurityJWT.service.FavoriteRecepiesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/favorites")
public class FavoriteRecepiesControler {
    @Autowired
    private FavoriteRecepiesService favoriteService;

    private Users getCurrentUser() {
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        if (principal instanceof UserPrincipal) {
            return ((UserPrincipal) principal).getUser(); // add getUser() in UserPrincipal
        }
        return null;
    }

    @PostMapping("/add/{recipeId}")
    public void addFavorite(@PathVariable int recipeId) {
        favoriteService.addFavorite(recipeId, getCurrentUser());
    }

    @Transactional
    @DeleteMapping("/remove/{recipeId}")
    public void removeFavorite(@PathVariable int recipeId) {
        favoriteService.removeFavorite(recipeId, getCurrentUser());
    }

    @GetMapping
    public List<FavoriteRecepi> getFavorites() {
        return favoriteService.getFavorites(getCurrentUser());
    }
}
