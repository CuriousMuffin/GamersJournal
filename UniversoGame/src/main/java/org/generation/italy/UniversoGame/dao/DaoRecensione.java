package org.generation.italy.UniversoGame.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.generation.italy.UniversoGame.models.Immagine;
import org.generation.italy.UniversoGame.models.Recensione;
import org.generation.italy.UniversoGame.models.Utente;
import org.generation.italy.UniversoGame.models.Videogioco;
import org.generation.italy.UniversoGame.util.BasicDao;
import org.generation.italy.UniversoGame.util.IMappablePro;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Repository;

/**
 * Estende BasicDao ed implementa le firme dei metodi di IDaoRecensione
 * Contiene il metodo di collegamento al DB e i metodi riguardanti la classe Recensione
 * 
 * @author Admin
 *
 */
@Repository
public class DaoRecensione extends BasicDao implements IDaoRecensione
{

	/**
	 * Costruttore di DaoRecensione per la connessione al database univeersogames
	 * tramite /UniversoGame/src/main/resources/application.properties
	 * 
	 * @param dbAddress
	 * @param user
	 * @param password
	 */
	public DaoRecensione(
			@Value("${db.address}") String dbAddress, 
			@Value("${db.user}") String user, 
			@Value("${db.password}") String password) {
		super(dbAddress, user, password);
	}
	
	/*================================================================================================================================================================*/

	/**
	 * Metodo che restituisce la lista di oggetti Recensione dal database,
	 * con tutte le loro proprietà
	 * 
	 */
	@Override
	public List<Recensione> recensioni() 
	{
		List<Recensione> ris = new ArrayList<>();

		List<Map<String, String>> maps = getAll("SELECT * FROM recensione");
		//System.out.println(maps);
		for (Map<String, String> map : maps) 
		{
			ris.add(IMappablePro.fromMap(Recensione.class, map));
		}

		return ris;
	}
	
<<<<<<< Updated upstream
	/*================================================================================================================================================================*/
	
	/**
	 * Metodo che restituisce il dettaglio di uno specifico oggetto 
	 * Recensione dal database, con le sue proprietà
	 * 
	 */
	@Override
	public Recensione recensione(int id) 
	{
		Map<String, String> map = getOne("SELECT * FROM recensione WHERE id = ?", id);	
		Recensione recensione = IMappablePro.fromMap(Recensione.class, map); //recupera una recensione specifica dal DB

=======
	@Override
	public List<Recensione> recensioniORM() {
		List<Recensione> ris = new ArrayList<>();
		for (Recensione r : recensioni()) {
			ris.add(recensione(r.getId()));
		}
		return ris;
	}
    /**
     * Metodo che restituisce una recensione specifica del database
     */
	@Override
	public Recensione recensione(int id) 
	{
		Map<String, String> map = getOne("SELECT * FROM recensione WHERE id = ?", id);
		//		
		Recensione recensione = IMappablePro.fromMap(Recensione.class, map);
		
		Map<String,String> mappaImmagine = getOne("select * from immagine where id = ?", map.get("idimmagine"));
		
		recensione.setImmagine(IMappablePro.fromMap(Immagine.class, mappaImmagine));
		//		
>>>>>>> Stashed changes
		Map<String,String> mappaUtente = getOne("select * from utente where id = ?", map.get("idutente"));
		recensione.setUtente(IMappablePro.fromMap(Utente.class, mappaUtente)); //recupera l'utente che ha scritto la recensione

		Videogioco v = null;
		Map<String,String> mappaVideogioco = getOne("select * from videogioco where id = ?", map.get("idvideogioco")); //recupera il videogioco relativo alla recensione

		List<Map<String,String>> maps = getAll("select piattaforma.nome from videogioco "
											+ "inner join compatibilita on compatibilita.idvideogioco = videogioco.id "
											+ "inner join piattaforma on compatibilita.idpiattaforma = piattaforma.id "
											+ "where compatibilita.idvideogioco = ?",id);

		List<String> comp = new ArrayList<>();

		if(map != null)
		{
			v = IMappablePro.fromMap(Videogioco.class, mappaVideogioco);

			for(Map<String, String> m : maps)
			{
				String c = m.get("nome");
				comp.add(c);
			}
			v.setCompatibilita(comp);
		}	
		recensione.setVideogioco(v);
	
		return recensione;
	}
	
	/*================================================================================================================================================================*/
	
	/**
	 * Metodo CRUD per l'aggiunta di un oggetto Recensione 
	 * Restituisce un valore booleano TRUE se l'operazione è andata a buon fine
	 * o FALSE in caso di errore
	 * 
	 */
	@Override
	public boolean add(Recensione recensione) 
	{
		return isExecute("INSERT INTO recensione (titolo, idimmagine, contenuto, valutazione, idutente, datapubblicazione, approvato, bozza, idvideogioco) "
						+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)",
				recensione.getTitolo(), recensione.getImmagine(), recensione.getContenuto(), recensione.getValutazione(), recensione.getUtente(), 
				recensione.getDataPubblicazione(), recensione.isApprovato(), recensione.isBozza(), recensione.getVideogioco());
	}
	
	/*================================================================================================================================================================*/
	
	/**
	 * Metodo CRUD per l'eliminazione di un oggetto Recensione 
	 * Restituisce un valore booleano TRUE se l'operazione è andata a buon fine
	 * o FALSE in caso di errore
	 * 
	 */
	@Override
	public boolean delete(int id) 
	{
		return isExecute("DELETE FROM recensione WHERE id = ?", id);
	}
	
	/*================================================================================================================================================================*/
	
	/**
	 * Metodo CRUD per la modifica di un oggetto Recensione 
	 * Restituisce un valore booleano TRUE se l'operazione è andata a buon fine
	 * o FALSE in caso di errore
	 * 
	 */
	@Override
	public boolean update(Recensione recensione) 
	{
		return isExecute("UPDATE recensione SET titolo = ?, idimmagine= ?, contenuto = ?, valutazione = ?, idutente = ?, datapubblicazione = ?, "
						+ "approvato = ?, bozza = ?, idvideogioco = ? WHERE id = ?", 
				recensione.getTitolo(), recensione.getImmagine(), recensione.getContenuto(), recensione.getValutazione(), recensione.getUtente(), 
				recensione.getDataPubblicazione(), recensione.isApprovato(), recensione.isBozza(), recensione.getVideogioco(), recensione.getId());
	}

}//fine dao