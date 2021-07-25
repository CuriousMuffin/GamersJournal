package org.generation.italy.UniversoGame.dao;

import java.util.List;

import org.generation.italy.UniversoGame.models.Recensione;

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
	
	public List<Recensione> recensioni(String query, Object... conditions);
	public List<Recensione> recensioniORM(String query, Object... conditions);
	public List<Recensione> searchRecensioni(String titoloVideogioco);
	public List<Recensione> recensioni();
	public List<Recensione> recensioniORM();
	public List<Recensione> recensioniPerData();
	public Recensione recensione(int id);
	public boolean add(Recensione recensione);
	public boolean delete(int id);
	public boolean update(Recensione recensione);
	public boolean updateBozza(Recensione recensione);

}// fine Idao
