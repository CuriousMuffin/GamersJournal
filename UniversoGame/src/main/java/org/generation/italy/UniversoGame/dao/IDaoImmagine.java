package org.generation.italy.UniversoGame.dao;

import java.util.List;

import org.generation.italy.UniversoGame.models.Immagine;

/**
 * IDaoImmagine
 * 
 * Interfaccia contenete i metodi CRUD per l'oggetto Immagine
 * 
 * @author Admin
 *
 */
public interface IDaoImmagine 
{
	   public List<Immagine> immagini();
	   public Immagine immagine(int id);
	   public int add(Immagine immagine);
	   public boolean delete(int id);
	   public boolean update(Immagine immagine);

}
