package org.generation.italy.UniversoGame.dao;

import java.util.List;

import org.generation.italy.UniversoGame.models.Utente;

public interface IDaoUtente 
{
	   public List<Utente> utenti();
	   public Utente utente(int id);
	   public boolean add(Utente utente);
	   public boolean delete(int id);
	   public boolean update(Utente utente);

}// fine Idao
