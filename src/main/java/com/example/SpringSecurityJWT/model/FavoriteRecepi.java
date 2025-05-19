package com.example.SpringSecurityJWT.model;

import jakarta.persistence.*;

@Entity
@Table(name = "favoriteRecepies")
public class FavoriteRecepi {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private int recipeId;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private Users user;

    public FavoriteRecepi () {}

    public FavoriteRecepi (int recipeId, Users user) {
        this.recipeId = recipeId;
        this.user = user;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public int getRecipeId() {
        return recipeId;
    }

    public void setRecipeId(int recipeId) {
        this.recipeId = recipeId;
    }

    public Users getUser() {
        return user;
    }

    public void setUser(Users user) {
        this.user = user;
    }
}
