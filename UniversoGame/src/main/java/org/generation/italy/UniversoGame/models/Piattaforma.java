package org.generation.italy.UniversoGame.models;

import org.generation.italy.UniversoGame.util.IMappablePro;

/**
 * Piattaforma
 * Classe Piattaforma che implementa l'interfaccia IMappablePro
 * Contiene le proprietà dell'oggetto Piattaforma
 * 
 * @author Admin
 *
 */
public class Piattaforma implements IMappablePro
{
	private int id;
	private String nome;
	private String produttore;
	
	public Piattaforma(int id, String nome, String produttore) 
	{
		super();
		this.id = id;
		this.nome = nome;
		this.produttore = produttore;
	}
	
	public Piattaforma() {}

	public int getId() 
	{
		return id;
	}

	public void setId(int id) 
	{
		this.id = id;
	}

	public String getNome() 
	{
		return nome;
	}

	public void setNome(String nome) 
	{
		this.nome = nome;
	}

	public String getProduttore() 
	{
		return produttore;
	}

	public void setProduttore(String produttore) 
	{
		this.produttore = produttore;
	}
	
	@Override
	public String toString() {
		return  " Piattaforma id: " + id         + "\n" +
				" nome:           " + nome       + "\n" +
				" produttore:     " + produttore +"\n\n";
	}

}//fine classe
