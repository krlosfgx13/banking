package com.project.banking.security;

import com.project.banking.service.impl.UserDetailsServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

@Configuration
public class WebSecurityConfig {
    @Autowired
    UserDetailsServiceImpl userDetailsService;
    @Autowired
    private AuthEntryPointJwt unauthorizedHandler;

    @Bean
    public AuthTokenFilter authenticationJwtTokenFilter() {
        return new AuthTokenFilter();
    }

    @Bean
    public AuthenticationManager authenticationManager(
            AuthenticationConfiguration authenticationConfiguration
    ) throws Exception {
        return authenticationConfiguration.getAuthenticationManager();
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {

        // Updated configuration for Spring Security 6.x
        http.csrf(csrf -> csrf.disable()) // Disable CSRF
                //.cors(cors -> cors.disable()) // Disable CORS (or configure if needed)
                .exceptionHandling(exceptionHandling -> exceptionHandling.authenticationEntryPoint(unauthorizedHandler))
                .sessionManagement(sessionManagement -> sessionManagement.sessionCreationPolicy(SessionCreationPolicy.STATELESS))
                .authorizeHttpRequests(authorizeRequests -> authorizeRequests
                        .requestMatchers("/api/auth/**", "/api/test/all").permitAll()
                        .requestMatchers("/h2-console/**").permitAll() // Allow access to H2// Use 'requestMatchers' instead of 'antMatchers'
                        .anyRequest().authenticated()
                );
        // Add the JWT Token filter before the UsernamePasswordAuthenticationFilter
        http.addFilterBefore(authenticationJwtTokenFilter(), UsernamePasswordAuthenticationFilter.class);
        return http.build();
    }

//    @Bean
//    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
//        http.sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS);
//        //http.cors().and().csrf().disable().authorizeRequests()
//        http.csrf().disable().authorizeRequests()
//                //.antMatchers(HttpMethod.POST, SecurityConstants.SIGN_IN_URL).permitAll()
//                .antMatchers(HttpMethod.POST, "/api/user").permitAll()
//                .antMatchers(HttpMethod.GET, "/api/user").hasAnyRole("USER", "ADMIN")
//                .antMatchers(HttpMethod.GET, "/api/atm").hasRole("ADMIN")
//                .antMatchers(HttpMethod.GET, "/api/bank").hasRole("ADMIN")
//                .antMatchers(HttpMethod.POST, "/api/transaction/withdrawMoney").hasAnyRole("USER", "ADMIN")
//                .antMatchers(HttpMethod.POST, "/api/transaction/depositMoney").hasAnyRole("USER", "ADMIN")
//                .antMatchers(HttpMethod.POST, "/api/transaction/balanceInquiry").hasAnyRole("USER", "ADMIN")
//                .antMatchers(HttpMethod.POST, "/api/transaction/depositMoneyWithPaycheck").hasAnyRole("USER", "ADMIN")
//                .antMatchers(HttpMethod.POST, "/api/transaction/withdrawMoney").hasAnyRole("USER", "ADMIN")
//                .antMatchers(HttpMethod.POST, "/api//transaction/monetaryInvestment").hasRole("ADMIN")
//                .antMatchers(HttpMethod.POST, "/api//transaction/rechargeAtm").hasRole("ADMIN")
//                .and()
//                .addFilter(new JWTAuthenticationFilter(authenticationManager(http.getSharedObject(AuthenticationConfiguration.class))))
//                .addFilterBefore(jwtAuthorizationFilter(), UsernamePasswordAuthenticationFilter.class);
//        http.headers().frameOptions().sameOrigin();
//        return http.build();
//    }

//    @Bean
//    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
//        http.csrf(csrf -> csrf.disable())
//                .exceptionHandling(exception -> exception.authenticationEntryPoint(unauthorizedHandler))
//                .sessionManagement(session -> session.sessionCreationPolicy(SessionCreationPolicy.STATELESS))
//                .authorizeHttpRequests(auth ->
//                        auth.requestMatchers("/api/auth/**").permitAll()
//                                .requestMatchers("/api/test/**").permitAll()
//                                .anyRequest().authenticated()
//                );
//
//        http.authenticationProvider(authenticationProvider());
//
//        http.addFilterBefore(authenticationJwtTokenFilter(), UsernamePasswordAuthenticationFilter.class);
//
//        return http.build();
//    }
}
