package org.generation.italy.UniversoGame.models;

import java.util.List;

import org.generation.italy.UniversoGame.util.IMappablePro;

/**
 * Videogioco
 * Classe Videogioco che implementa l'interfaccia IMappablePro
 * Contiene le proprietà dell'oggetto Videogioco
 * 
 * @author Admin
 *
 */
public class Videogioco implements IMappablePro
{

	private int id;
	private String titolo;
	private String genere;
	private String dataUscita;
	private String casaProduttrice;
	private List<String> compatibilita; //lista delle compatibilità dei videogiochi

	public Videogioco(int id, String titolo, String genere, String dataUscita, String casaProduttrice, List<String> compatibilita) 
	{
		super();
		this.id = id;
		this.titolo = titolo;
		this.genere = genere;
		this.dataUscita = dataUscita;
		this.casaProduttrice = casaProduttrice;
		this.compatibilita = compatibilita;
	}

	public Videogioco() {
		super();
	}

	public int getId() 
	{
		return id;
	}

	public void setId(int id) 
	{
		this.id = id;
	}

	public String getTitolo() 
	{
		return titolo;
	}

	public void setTitolo(String titolo) 
	{
		this.titolo = titolo;
	}

	public String getGenere() 
	{
		return genere;
	}

	public void setGenere(String genere) 
	{
		this.genere = genere;
	}

	public String getDataUscita() 
	{
		return dataUscita;
	}

	public void setDataUscita(String dataUscita) {
		this.dataUscita = dataUscita;
	}

	public String getCasaProduttrice() 
	{
		return casaProduttrice;
	}

	public void setCasaProduttrice(String casaProduttrice)
	{
		this.casaProduttrice = casaProduttrice;
	}
	
	public List<String> getCompatibilita() 
	{
		return compatibilita;
	}

	public void setCompatibilita(List<String> compatibilita) 
	{
		this.compatibilita = compatibilita;
	}

	@Override
	public String toString() 
	{
		return  " Videogioco id:   " + id              + "\n" + 
				" titolo:          " + titolo          + "\n" +
				" genere:          " + genere          + "\n" +
				" dataUscita:      " + dataUscita      + "\n" +
				" casaProduttrice: " + casaProduttrice + "\n" + 
				" compatibilità:   " + compatibilita   +"\n\n";
	}

}//fine classe