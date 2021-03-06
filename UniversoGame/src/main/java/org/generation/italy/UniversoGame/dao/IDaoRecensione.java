package org.generation.italy.UniversoGame.dao;

import java.util.List;

import org.generation.italy.UniversoGame.models.Recensione;

public interface IDaoRecensione 
{
	   public List<Recensione> recensioni();
	   public Recensione recensione(int id);
	   public boolean add(Recensione recensione);
	   public boolean delete(int id);
	   public boolean update(Recensione recensione);

}// fine Idao
