package org.generation.italy.UniversoGame.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.generation.italy.UniversoGame.models.Videogioco;
import org.generation.italy.UniversoGame.util.BasicDao;
import org.generation.italy.UniversoGame.util.IMappablePro;

/**
 * IDaoVideogioco
 * 
 * Interfaccia contenete i metodi CRUD per l'oggetto Videogioco
 * 
 * @author Admin
 *
 */
public interface IDaoVideogioco 
{
	public List<Videogioco> videogiochi(String query, Object...conditions);
	public List<Videogioco> videogiochi();
	public List<Videogioco> videogiochiORM(); //permette di mostrare le compatibilità di tutti i videogiochi
	public List<Videogioco> ricercaVideogiochibyName(String titolo);
	public Videogioco videogioco (int id);
	public boolean add(Videogioco videogioco);
	public boolean delete(int id);
	public boolean update(Videogioco videogioco);
	   
}// fine Idao
