package org.generation.italy.UniversoGame.dao;

import java.util.List;

import org.generation.italy.UniversoGame.models.Immagine;

public interface IDaoImmagine 
{
	   public List<Immagine> immagini();
	   public Immagine immagine(int id);
	   public boolean add(Immagine immagine);
	   public boolean delete(int id);
	   public boolean update(Immagine immagine);

}
