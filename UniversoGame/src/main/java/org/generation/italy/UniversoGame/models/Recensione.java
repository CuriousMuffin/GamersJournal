package org.generation.italy.UniversoGame.models;

import org.generation.italy.UniversoGame.util.IMappablePro;

public class Recensione implements IMappablePro
{
	
	private int id;
	private String titolo;
	private String contenuto;
	private double valutazione;
	private String dataPubblicazione;
	private boolean approvato;
	private boolean bozza;
	private Immagine immagine; 
	private Utente utente; 
	private Videogioco videogioco;

	public Recensione() {}
	
	public Recensione(int id, String titolo, String contenuto, double valutazione, String dataPubblicazione,
							   boolean approvato, boolean bozza, Immagine immagine, Utente utente, Videogioco videogioco) 
	{
		super();
		this.id = id;
		this.titolo = titolo;
		this.contenuto = contenuto;
		this.valutazione = valutazione;
		this.dataPubblicazione = dataPubblicazione;
		this.approvato = approvato;
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

	public double getValutazione() 
	{
		return valutazione;
	}

	public void setValutazione(double valutazione) 
	{
		this.valutazione = valutazione;
	}

	public String getDataPubblicazione() 
	{
		return dataPubblicazione;
	}

	public void setDataPubblicazione(String dataPubblicazione) 
	{
		this.dataPubblicazione = dataPubblicazione;
	}

	public boolean isApprovato() 
	{
		return approvato;
	}

	public void setApprovato(boolean approvato) 
	{
		this.approvato = approvato;
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
		return "Recensione id:        " + id                         + "\n"+
				  " titolo:                   " + titolo                    + "\n"+
				  " idCopertina:          " + immagine               + "\n"+
				  " contenuto:             " + contenuto              + "\n"+
				  " valutazione:           " + valutazione           + "\n" + 
				  " idAutore:              " + utente                   + "\n" +
				  " dataPubblicazione: " + dataPubblicazione + "\n" +
				  " approvato:             " + approvato             + "\n" +
				  " bozza:                   " + bozza                   + "\n" +
				  " idVideogioco:          " + videogioco            +"\n\n";
	}

}//fine classe
