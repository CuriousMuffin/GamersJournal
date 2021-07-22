package org.generation.italy.UniversoGame.security;

import org.generation.italy.UniversoGame.auth.AuthService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
@EnableWebSecurity
public class ApplicationSecurityConfig extends WebSecurityConfigurerAdapter 
{ 

	// Oggetto che serve per criptografare le password
	private final PasswordEncoder passwordEncoder;
	// Il servizio che ci fornisce gli utenti
	private final AuthService authService;

	@Autowired
	public ApplicationSecurityConfig(PasswordEncoder passwordEncoder, AuthService authService) 
	{
		this.passwordEncoder = passwordEncoder;
		this.authService = authService;
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception 
	{
		http.csrf().disable() 
		.authorizeRequests()
		.antMatchers("/", "index.html", "/css/**", "/js/**", "/signup.html", "/signup", "/login.html", "/login", "/fail.html", 
					 "/forbidden.html", "/assets/**", "homeContentContainer.html").permitAll() 
		.antMatchers("/altro.html").hasAnyRole(Roles.ADMIN, Roles.USER)
		.antMatchers("/admin.html").hasAnyRole(Roles.ADMIN)
		.antMatchers(HttpMethod.GET, "/dettaglio").hasAnyRole(Roles.USER)
		.antMatchers("/account.html").hasAnyRole(Roles.ADMIN, Roles.USER)
		.antMatchers("/accountmanager/**").hasAnyRole(Roles.ADMIN) // solo gli admin accedono a /management/**
		.anyRequest().permitAll()
		.and()
		.exceptionHandling()
		.accessDeniedPage("/forbidden.html")
		.and()
		.formLogin()
		.loginPage("/login.html")
		.loginProcessingUrl("/login")
		.permitAll() 
		.defaultSuccessUrl("/index.html", true) // se riesce ad accedere lo rimando ad index.html
		.failureUrl("/fail.html")
		.and()
		.logout()
		.logoutUrl("/logout.html")
		.logoutSuccessUrl("/logout.html")// indirizzo per fare logout
		.clearAuthentication(true)
		.logoutSuccessUrl("/index.html");
	}

	@Bean 
	// questo oggetto servirà a spring security per andare a cercare gli utenti da un service
	public DaoAuthenticationProvider daoAuthenticationProvider() 
	{
		DaoAuthenticationProvider provider = new DaoAuthenticationProvider();
		provider.setPasswordEncoder(passwordEncoder);
		provider.setUserDetailsService(authService);
		return provider;
	}

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception 
	{
		auth.authenticationProvider(daoAuthenticationProvider());
	}

}