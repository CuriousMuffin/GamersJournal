package org.generation.italy.UniversoGame.models;

import org.generation.italy.UniversoGame.util.IMappablePro;

public class Utente implements IMappablePro
{
	
	private int id;
	private String username;
	private String password;
	private String nickname;
	private boolean admin;
	private Immagine immagine;

	public Utente() {}

	public Utente(int id, String username, String password, String nickname, boolean admin, Immagine immagine) 
	{
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.nickname = nickname;
		this.admin = admin;
		this.immagine = immagine;
	}

	public int getId() 
	{
		return id;
	}

	public void setId(int id) 
	{
		this.id = id;
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

	public String getNickname() 
	{
		return nickname;
	}

	public void setNickname(String nickname) 
	{
		this.nickname = nickname;
	}

	public boolean isAdmin() 
	{
		return admin;
	}

	public void setAdmin(boolean admin) 
	{
		this.admin = admin;
	}

	public Immagine getImmagine() 
	{
		return immagine;
	}

	public void setImmagine(Immagine immagine) 
	{
		this.immagine = immagine;
	}

	@Override
	public String toString() {
		return  " Utente id:      " + id                  + "\n"+
				   " username:       " + username        + "\n"+
				   " password:       " + password       + "\n"+
				   " nickname:       " + nickname        + "\n"+
				   " admin:            " + admin             + "\n" +
				   " immagine:       " + immagine		 + "\n\n";
	}

}//fine classe
