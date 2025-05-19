package com.example.SpringSecurityJWT.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.Customizer;
import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

// this is configuration file
@Configuration
// use this configuration
@EnableWebSecurity
public class SecurityConfig {

    @Autowired
    private UserDetailsService userDetailsService;
    @Autowired
    private JwtFilter jwtFilter;
@Bean
public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
// disable crfft
    return http.cors(Customizer.withDefaults()).
            csrf(customizer -> customizer.disable()).
            // check if authenticated
            authorizeHttpRequests(request -> request
                    .requestMatchers("/login","/register").permitAll()
                    .anyRequest().authenticated()).

            httpBasic(Customizer.withDefaults()).
            // make stateless
            sessionManagement(session -> session.sessionCreationPolicy(SessionCreationPolicy.STATELESS))
            .addFilterBefore(jwtFilter, UsernamePasswordAuthenticationFilter.class)
            .build();


}
//@Bean
////user detasilService is an interface todel turim panaudoti ji implementuojancia klase
//// nes negalim sukurti objekto, default implementation is InMemoryUserDetailsManager();
//    public UserDetailsService userDetailsService(){
//    // UserDetails is interface user extends it, build returns user details
//    UserDetails  user1 = User.withDefaultPasswordEncoder()
//            .username("b").password("b")
//            .roles("USER").build();
//    UserDetails  user2 = User.withDefaultPasswordEncoder()
//            .username("c").password("c")
//            .roles("ADMIN").build();
//    return new InMemoryUserDetailsManager();
//}

    @Bean
    public AuthenticationProvider authenticationProvider(){
// dao auth provider auth provider for database
        DaoAuthenticationProvider provider = new DaoAuthenticationProvider();
        provider.setPasswordEncoder(NoOpPasswordEncoder.getInstance());
        provider.setUserDetailsService(userDetailsService);


        return provider;
    }

    @Bean
    public AuthenticationManager authenticationManager(AuthenticationConfiguration config) throws Exception {
        return config.getAuthenticationManager();

    }
    // for react
    @Bean
    public WebMvcConfigurer corsConfigurer() {
        return new WebMvcConfigurer() {
            @Override
            public void addCorsMappings(CorsRegistry registry) {
                registry.addMapping("/**")
                        .allowedOrigins("http://localhost:5173")
                        .allowedMethods("GET", "POST", "PUT", "DELETE", "OPTIONS")
                        .allowedHeaders("*")
                        .allowCredentials(true);
            }
        };
    }

}

