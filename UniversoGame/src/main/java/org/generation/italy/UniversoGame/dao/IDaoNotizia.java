package org.generation.italy.UniversoGame.dao;

import java.util.List;

import org.generation.italy.UniversoGame.models.Notizia;

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
	   public List<Notizia> notizie();
	   public Notizia notizia(int id);
	   public boolean add(Notizia notizia);
	   public boolean delete(int id);
	   public boolean update(Notizia notizia);

}// fine Idao
