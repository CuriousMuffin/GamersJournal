package org.generation.italy.UniversoGame.models;

import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.generation.italy.UniversoGame.security.Roles;
import org.generation.italy.UniversoGame.util.IMappablePro;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

/**
 * Utente
 * Classe Utente che implementa l'interfaccia IMappablePro
 * Contiene le proprietà dell'oggetto Utente
 * 
 * @author Admin
 *
 */
@Entity
public class Utente implements UserDetails, IMappablePro  
{

	private static final Map<String, Collection<? extends GrantedAuthority>> AUTHORITIES = new HashMap<>();

	{
		AUTHORITIES.put(Roles.ADMIN, Arrays.asList(new GrantedAuthority[] { new SimpleGrantedAuthority("ROLE_ADMIN"),
				new SimpleGrantedAuthority("management"), }));
		AUTHORITIES.put(Roles.USER, Arrays.asList(new GrantedAuthority[] { new SimpleGrantedAuthority("ROLE_USER") }));

	}

	public static Collection<? extends GrantedAuthority> getAuthorityOfRole(String role) 
	{
		return AUTHORITIES.get(role);
	}

	/**
	 * 
	 */
	private static final long serialVersionUID = 1237489217380966710L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	@Column(unique = true) 
	private String email;
	@Column(unique = true)
	private String username;
	private String password;
	private String ruolo;

	public Utente() {}

	public Utente(int id, String email, String username, String password, String ruolo) 
	{
		super();
		this.id = id;
		this.email = email;
		this.username = username;
		this.password = password;
		this.ruolo = ruolo;
	}

	public int getId() 
	{
		return id;
	}

	public void setId(int id) 
	{
		this.id = id;
	}

	public String getEmail() 
	{
		return email;
	}

	public void setEmail(String email) 
	{
		this.email = email;
	}

	public String getUsername() 
	{
		return username;
	}

	public void setUsername(String username) 
	{
		this.username = username;
	}

	public String getPassword() 
	{
		return password;
	}

	public void setPassword(String password) 
	{
		this.password = password;
	}

	public String getRuolo() 
	{
		return ruolo;
	}

	public void setRuolo(String ruolo) 
	{
		this.ruolo = ruolo;
	}

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() 
	{
		return getAuthorityOfRole(this.ruolo);
	}

	@Override
	public boolean isAccountNonExpired() 
	{
		return true;
	}

	@Override
	public boolean isAccountNonLocked() 
	{
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() 
	{
		return true;
	}

	@Override
	public boolean isEnabled() 
	{
		return true;
	}
	
	@Override
	public String toString() 
	{
		return  " Utente id:      " + id       + "\n"+
				" email:          " + email    + "\n"+
				" password:       " + password + "\n"+
				" nickname:       " + username + "\n"+
				" ruolo:          " + ruolo    + "\n\n";
	}
	
}//fine classe
