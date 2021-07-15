package org.generation.italy.UniversoGame.models;

import org.generation.italy.UniversoGame.util.IMappablePro;

public class Immagine implements IMappablePro
{
	
	private int id ;
	private String pathImmagine;

	public Immagine(int id, String pathImmagine) 
	{
		super();
		this.id = id;
		this.pathImmagine = pathImmagine;
	}
	
	public Immagine() {}

	public int getId() 
	{
		return id;
	}

	public void setId(int id) 
	{
		this.id = id;
	}

	public String getPathImmagine() 
	{
		return pathImmagine;
	}

	public void setPathImmagine(String pathImmagine) 
	{
		this.pathImmagine = pathImmagine;
	}

	@Override
	public String toString() {
		return  " Immagine id:    " + id                  + "\n" +
					" pathImmagine: " + pathImmagine + "\n\n";
	}

}//fine classe
