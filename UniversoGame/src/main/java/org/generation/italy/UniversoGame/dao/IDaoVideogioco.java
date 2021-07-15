package org.generation.italy.UniversoGame.dao;

import java.util.List;

import org.generation.italy.UniversoGame.models.Videogioco;

public interface IDaoVideogioco 
{
	   public List<Videogioco> videogiochi();
	   public Videogioco videogioco (int id);
	   public boolean add(Videogioco videogioco);
	   public boolean delete(int id);
	   public boolean update(Videogioco videogioco);
	   
}// fine Idao
