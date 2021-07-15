package org.generation.italy.UniversoGame.models;

import org.generation.italy.UniversoGame.util.IMappablePro;

public class Notizia implements IMappablePro
{
	
	private int id;
	private String titolo;
	private String contenuto;
	private String dataPubblicazione;
	private boolean bozza;
	private Immagine immagine;
	private Utente utente;
	private Videogioco videogioco;
	
	public Notizia() {}
	
	public Notizia(int id, String titolo, String contenuto, String dataPubblicazione, boolean bozza, Immagine immagine,
						  Utente utente, Videogioco videogioco) 
	{
		super();
		this.id = id;
		this.titolo = titolo;
		this.contenuto = contenuto;
		this.dataPubblicazione = dataPubblicazione;
		this.bozza = bozza;
		this.immagine = immagine;
		this.utente = utente;
		this.videogioco = videogioco;
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

	public String getContenuto() 
	{
		return contenuto;
	}

	public void setContenuto(String contenuto) 
	{
		this.contenuto = contenuto;
	}

	public String getDataPubblicazione() 
	{
		return dataPubblicazione;
	}

	public void setDataPubblicazione(String dataPubblicazione) 
	{
		this.dataPubblicazione = dataPubblicazione;
	}

	public boolean isBozza() 
	{
		return bozza;
	}

	public void setBozza(boolean bozza) 
	{
		this.bozza = bozza;
	}

	public Immagine getImmagine() 
	{
		return immagine;
	}

	public void setImmagine(Immagine immagine) 
	{
		this.immagine = immagine;
	}

	public Utente getUtente() 
	{
		return utente;
	}

	public void setUtente(Utente utente)
	{
		this.utente = utente;
	}

	public Videogioco getVideogioco() 
	{
		return videogioco;
	}

	public void setVideogioco(Videogioco videogioco) 
	{
		this.videogioco = videogioco;
	}

	@Override
	public String toString() {
		return  " Notizia id:        " + id                + "\n" + 
				" titolo:            " + titolo            + "\n" +
				" contenuto:         " + contenuto         + "\n" +
				" dataPubblicazione: " + dataPubblicazione + "\n" +
				" bozza:             " + bozza             + "\n" +
				" immagine:          " + immagine          + "\n" +
				" autore:            " + utente            + "\n" +
				" videogioco:        " + videogioco        +"\n\n" ;
	}
	

}//fine classe
