package org.generation.italy.UniversoGame.dao;

import java.util.List;

import org.generation.italy.UniversoGame.models.Piattaforma;

public interface IDaoPiattaforma 
{
	   public List<Piattaforma> piattaforme();
	   public Piattaforma piattaforma(int id);
	   public boolean add(Piattaforma piattaforma);
	   public boolean delete(int id);
	   public boolean update(Piattaforma piattaforma);

}// fine Idao
