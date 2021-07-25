package org.generation.italy.UniversoGame.dao;

import java.util.List;

import org.generation.italy.UniversoGame.models.Notizia;
import org.generation.italy.UniversoGame.models.Recensione;

/**
 * IDaoNotizia
 * 
 * Interfaccia contenete i metodi CRUD per l'oggetto Notizia
 * 
 * @author Admin
 *
 */
public interface IDaoNotizia 
{
	public List<Notizia> notizie(String query, Object... conditions);
	public List<Notizia> notizieORM(String query, Object... conditions);
	public List<Notizia> searchNotizie(String titoloVideogioco);
	public List<Notizia> notizie();
	public List<Notizia> notizieORM();
	public List<Notizia> notiziePerData();
	public Notizia notizia(int id);
	public boolean add(Notizia notizia);
	public boolean delete(int id);
	public boolean update(Notizia notizia);
	public boolean updateBozza(Notizia notizia);

}// fine Idao
