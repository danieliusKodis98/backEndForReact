package com.example.SpringSecurityJWT.service;

import com.example.SpringSecurityJWT.model.UserPrincipal;
import com.example.SpringSecurityJWT.model.Users;
import com.example.SpringSecurityJWT.repo.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class MyUserDetailsService implements UserDetailsService {
    @Autowired
    private UserRepo userRepo;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
      Users user = userRepo.findByUsername(username);

      if(user == null){
          System.out.println("user not found");
          throw new UsernameNotFoundException("userNotFound");
      }
        return new UserPrincipal(user);
    }
}
