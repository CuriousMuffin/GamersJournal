package org.generation.italy.UniversoGame.dao;

import java.util.List;

import org.generation.italy.UniversoGame.models.Recensione;
import org.generation.italy.UniversoGame.models.Videogioco;

/**
 * IDaoRecensione
 * 
 * Interfaccia contenete i metodi CRUD per l'oggetto Recensione
 * 
 * @author Admin
 *
 */
public interface IDaoRecensione 
{
	   public List<Recensione> recensioni();
	   public Recensione recensione(int id);
	   public boolean add(Recensione recensione);
	   public boolean delete(int id);
	   public boolean update(Recensione recensione);
	   public List<Recensione> recensioniORM();

}// fine Idao
