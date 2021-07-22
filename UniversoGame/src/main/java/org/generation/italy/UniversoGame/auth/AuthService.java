package org.generation.italy.UniversoGame.auth;

import java.util.Optional;

import org.generation.italy.UniversoGame.models.Utente;
import org.generation.italy.UniversoGame.security.Roles;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class AuthService implements UserDetailsService 
{
	private UtenteRepository dao;

	private PasswordEncoder passwordEncoder;

	@Autowired
	public AuthService(UtenteRepository dao, PasswordEncoder passwordEncoder) 
	{
		this.dao = dao;
		this.passwordEncoder = passwordEncoder;
	}

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException 
	{
		Optional<? extends UserDetails> user = dao.findByUsername(username);

		if (user.isPresent())
			return user.get();

		throw new UsernameNotFoundException("Nessun utente col username: " + username);
	}

	public boolean signup(String email, String username, String password) 
	{
		Utente newUtente = new Utente();
		newUtente.setEmail(email);
		newUtente.setUsername(username);
		newUtente.setPassword(passwordEncoder.encode(password));
		newUtente.setRuolo(Roles.USER);
		try 
		{	
			dao.save(newUtente);
		} 
		catch (Exception e) 
		{
			System.out.println("Utente già registrato");
			return false;
		}
		
		return true;
	}

}//fine AuthService