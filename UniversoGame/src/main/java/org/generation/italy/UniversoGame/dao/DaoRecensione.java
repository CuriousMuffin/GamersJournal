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
	 * Metodo accessorio per effettuare query sulla lista di recensioni
	 */
	@Override
	public List<Recensione> recensioni(String query, Object... conditions) 
	{
		List<Recensione> ris = new ArrayList<>();
		
		List<Map<String, String>> maps = getAll(query, conditions);
		//System.out.println(maps);
		for (Map<String, String> map : maps) 
		{
			ris.add(IMappablePro.fromMap(Recensione.class, map));
		}
		
		return ris;
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
		return recensioni("SELECT * FROM recensione ");
	}
	
	/*================================================================================================================================================================*/

	
	/**
	 * Metodo che restituisce il dettaglio di uno specifico oggetto 
	 * Recensione dal database, con le sue proprietà
	 * 
	 */
//	@Override
//	public Recensione recensione(int id) 
//	{
//		Map<String, String> map = getOne("SELECT * FROM recensione WHERE id = ?", id);	
//		Recensione recensione = IMappablePro.fromMap(Recensione.class, map); //recupera una recensione specifica dal DB
//
//	}
	@Override
	public List<Recensione> recensioniORM(String query, Object... conditions) {
		List<Recensione> ris = new ArrayList<>();
		for (Recensione r : recensioni(query, conditions)) {
			ris.add(recensione(r.getId()));
		}
		return ris;
	}
	
	@Override
	public List<Recensione> recensioniORM() {
		return recensioniORM("SELECT * FROM recensione ");
	}
	
	/**
	 * Metodo che restituisce un elenco di recensioni in ordine di<br>data di pubblicazione dalla più recente
	 * alla più vecchia.
	 * 
	 * @return lista di recensioni ordinata per data di pubblicazione 
	 */
	public List<Recensione> recensioniPerData(){
	
		return recensioniORM("SELECT * FROM recensione WHERE bozza is false ORDER BY datapubblicazione desc ");
	}
	
    /**
     * Metodo che restituisce una recensione specifica del database
     */
	@Override
	public Recensione recensione(int id) 
	{
		Map<String, String> map = getOne("SELECT * FROM recensione WHERE id = ?", id);	
		Recensione recensione = IMappablePro.fromMap(Recensione.class, map);
		
		Map<String,String> mappaImmagine = getOne("select * from immagine where id = ?", map.get("idimmagine"));
		recensione.setImmagine(IMappablePro.fromMap(Immagine.class, mappaImmagine));

		Map<String,String> mappaUtente = getOne("select * from utente where id = ?", map.get("idutente"));
		recensione.setUtente(IMappablePro.fromMap(Utente.class, mappaUtente)); //recupera l'utente che ha scritto la recensione

		Videogioco v = null;
		Map<String,String> mappaVideogioco = getOne("select * from videogioco where id = ?", map.get("idvideogioco")); //recupera il videogioco relativo alla recensione

		List<Map<String,String>> maps = getAll("SELECT piattaforma.nome FROM videogioco "
											 + "INNER JOIN compatibilita ON videogioco.id = idvideogioco "
											 + "INNER JOIN piattaforma ON piattaforma.id = idpiattaforma "
											 + "WHERE compatibilita.idvideogioco = ?",id);

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
		return isExecute("INSERT INTO recensione (titolo, idimmagine, contenuto, valutazione, datapubblicazione, approvato, bozza, idutente, idvideogioco) "
						+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)",
				recensione.getTitolo(), recensione.getImmagine().getId(), recensione.getContenuto(), recensione.getValutazione(), 
				recensione.getDataPubblicazione(), recensione.isApprovato(), recensione.isBozza(), recensione.getUtente().getId(), recensione.getVideogioco().getId());
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
		return isExecute("UPDATE recensione SET titolo = ?, contenuto = ?, valutazione = ?, datapubblicazione = ?, "
						+ "bozza = ?, idimmagine = ?, idvideogioco = ? WHERE id = ?", 
				recensione.getTitolo(), recensione.getContenuto(), recensione.getValutazione(), 
				recensione.getDataPubblicazione(), recensione.isBozza(), recensione.getImmagine().getId(), recensione.getVideogioco().getId(), recensione.getId());
	}

	/**
	 * Metodo CRUD per la modifica delle proprietà bozza e approvato di Recensione
	 * Ha la possibilità di modificare anche uno solo dei due alla volta
	 * Restituisce un valore booleano TRUE se l'operazione è andata a buon fine
	 * o FALSE in caso di errore
	 */
	@Override
	public boolean updateBozza(Recensione recensione) {
		return isExecute("update recensione set approvato = ?,bozza = ? where id = ?", recensione.isApprovato(), recensione.isBozza(), recensione.getId());
	}

	@Override
	public List<Recensione> searchRecensioni(int idVideogioco) {	
		return recensioniORM("SELECT * FROM notizia WHERE bozza is false and idvideogioco = ?", idVideogioco);
	}

}//fine dao