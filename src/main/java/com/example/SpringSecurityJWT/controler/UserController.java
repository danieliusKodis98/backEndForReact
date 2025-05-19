package com.example.SpringSecurityJWT.controler;

import com.example.SpringSecurityJWT.model.UserPrincipal;
import com.example.SpringSecurityJWT.model.Users;
import com.example.SpringSecurityJWT.service.JWTService;
import com.example.SpringSecurityJWT.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

import org.springframework.web.bind.annotation.*;

@RestController
public class UserController {
    @Autowired
    private UserService service;

    @Autowired
    private JWTService jwtService;

    @PostMapping("/register")
    public Users register(@RequestBody Users user) {
        return service.register(user);

    }

    @GetMapping("/getUsername")
    public String getUsername() {

        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

        if (authentication != null && authentication.isAuthenticated()) {

            Object userPrincipal = authentication.getPrincipal();

            if (userPrincipal instanceof UserPrincipal) {
                UserPrincipal principal = (UserPrincipal) userPrincipal;
                return principal.getUsername();
            }
        }

        return null;
    }
    @GetMapping("/getLastname")
    public String getLastname() {

        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

        if (authentication != null && authentication.isAuthenticated()) {

            Object userPrincipal = authentication.getPrincipal();

            if (userPrincipal instanceof UserPrincipal) {
                UserPrincipal principal = (UserPrincipal) userPrincipal;
                return principal.getLastname();
            }
        }

        return null;
    }
    @GetMapping("/getName")
    public String getName() {

        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

        if (authentication != null && authentication.isAuthenticated()) {

            Object userPrincipal = authentication.getPrincipal();


            if (userPrincipal instanceof UserPrincipal) {
                UserPrincipal principal = (UserPrincipal) userPrincipal;
                return principal.getName();
            }
        }

        return null;
    }
    @GetMapping("/getRole")
    public String getRole() {

        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

        if (authentication != null && authentication.isAuthenticated()) {

            Object userPrincipal = authentication.getPrincipal();

            if (userPrincipal instanceof UserPrincipal) {
                UserPrincipal principal = (UserPrincipal) userPrincipal;
                return principal.getRole();
            }
        }

        return null;
    }
    @PostMapping("/login")
    public String login(@RequestBody Users user) {

        return service.verify(user);
    }

    @GetMapping("/validate-token")
    public String validateToken(@RequestHeader("Authorization") String authorizationHeader) {

        String token = authorizationHeader.substring(7);

        if (jwtService.validateToken2(token)) {
            return "success";
        } else {
            return "fail";
        }
    }
}
