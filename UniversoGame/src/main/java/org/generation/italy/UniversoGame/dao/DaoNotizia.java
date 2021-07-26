package org.generation.italy.UniversoGame.dao;

import java.util.ArrayList;

import java.util.List;
import java.util.Map;

import org.generation.italy.UniversoGame.models.Immagine;
import org.generation.italy.UniversoGame.models.Notizia;
import org.generation.italy.UniversoGame.models.Recensione;
import org.generation.italy.UniversoGame.models.Utente;
import org.generation.italy.UniversoGame.models.Videogioco;
import org.generation.italy.UniversoGame.util.BasicDao;
import org.generation.italy.UniversoGame.util.IMappablePro;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Repository;

/**
 * Estende BasicDao ed implementa le firme dei metodi di IDaoNotizia
 * Contiene il metodo di collegamento al DB e i metodi riguardanti la classe Notizia
 * 
 * @author Admin
 *
 */
@Repository
public class DaoNotizia extends BasicDao implements IDaoNotizia
{
	
	/**
	 * Costruttore di DaoVideogioco per la connessione al database univeersogames
	 * tramite /UniversoGame/src/main/resources/application.properties
	 * 
	 * @param dbAddress
	 * @param user
	 * @param password
	 */
	public DaoNotizia(
			@Value("${db.address}") String dbAddress, 
			@Value("${db.user}") String user, 
			@Value("${db.password}") String password) 
	{
		super(dbAddress, user, password);
	}
	
	/*================================================================================================================================================================*/

	/**
	 * Metodo che restituisce la lista di oggetti Notizia dal database,
	 * con tutte le loro proprietà
	 * 
	 */
	@Override
	public List<Notizia> notizie() 
	{
		return notizie("SELECT * FROM notizia ");
	}
	
	@Override
	public List<Notizia> notizieORM() {
		return notizieORM("SELECT * FROM notizia");
	}
	
	/*================================================================================================================================================================*/

	/**
	 * Metodo che restituisce il dettaglio di uno specifico oggetto 
	 * Notizia dal database, con le sue proprietà
	 * 
	 */
	@Override
	public Notizia notizia(int id) 
	{	
		Map<String, String> map = getOne("SELECT * FROM notizia WHERE id = ?", id);
		Notizia notizia = IMappablePro.fromMap(Notizia.class, map);

	
		Map<String,String> mappaUtente = getOne("select * from utente where id = ?", map.get("idutente"));
		
		notizia.setUtente(IMappablePro.fromMap(Utente.class, mappaUtente));
	
		Map<String,String> mappaImmagine = getOne("select * from immagine where id = ?", map.get("idimmagine"));
		
		notizia.setImmagine(IMappablePro.fromMap(Immagine.class, mappaImmagine));
		

		Videogioco v = null;
		Map<String,String> mappaVideogioco = getOne("select * from videogioco where id = ?", map.get("idvideogioco"));
		
		List<Map<String,String>> maps = getAll("select piattaforma.nome from videogioco "
											 + "inner join compatibilita on compatibilita.idvideogioco = videogioco.id "
											 + "inner join piattaforma on compatibilita.idpiattaforma = piattaforma.id "
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
		notizia.setVideogioco(v);
		return notizia;
	}
	
	/*================================================================================================================================================================*/

	/**
	 * Metodo CRUD per l'aggiunta di un oggetto Notizia 
	 * Restituisce un valore booleano TRUE se l'operazione è andata a buon fine
	 * o FALSE in caso di errore
	 * 
	 */
	@Override
	public boolean add(Notizia notizia) 
	{
		return isExecute("insert into notizia (titolo, contenuto, datapubblicazione, bozza, idimmagine, idutente, idvideogioco) values (?,?,?,?,?,?,?)",
							notizia.getTitolo(), notizia.getContenuto(), notizia.getDataPubblicazione(), notizia.isBozza(), notizia.getImmagine().getId(),
							notizia.getUtente().getId(), notizia.getVideogioco().getId());
	}
	
	/*================================================================================================================================================================*/
  
	/** 
	 * Metodo CRUD per l'eliminazione di un oggetto Notizia 
	 * Restituisce un valore booleano TRUE se l'operazione è andata a buon fine
	 * o FALSE in caso di errore
	 * 
	 */
	@Override
	public boolean delete(int id) 
	{
		return isExecute("delete from notizia where id = ?", id);
	}
	
	/*================================================================================================================================================================*/

	/**
	 * Metodo CRUD per la modifica di un oggetto Notizia 
	 * Restituisce un valore booleano TRUE se l'operazione è andata a buon fine
	 * o FALSE in caso di errore
	 * 
	 */
	@Override
	public boolean update(Notizia notizia) 
	{
		return isExecute("update notizia set titolo = ?, contenuto = ?, datapubblicazione = ?, bozza = ?, idimmagine = ?, idvideogioco = ? WHERE id =?",
						  notizia.getTitolo(), notizia.getContenuto(), notizia.getDataPubblicazione(), notizia.isBozza(), notizia.getImmagine().getId(),
						  notizia.getVideogioco().getId(), notizia.getId());
	}
	
	@Override
	public boolean updateBozza(Notizia notizia) {
		return isExecute("update notizia set bozza = ? where id = ?", notizia.isBozza(), notizia.getId());
	}
	

	/*================================================================================================================================================================*/

	@Override
	public List<Notizia> notizie(String query, Object... conditions) {
		List<Notizia> ris = new ArrayList<>();
		
		List<Map<String, String>> maps = getAll(query, conditions);
		
		for (Map<String, String> map : maps) 
		{
			ris.add(IMappablePro.fromMap(Notizia.class, map));
		}
		
		return ris;
	}

	/*================================================================================================================================================================*/
 
	@Override
	public List<Notizia> notizieORM(String query, Object... conditions) {
		List<Notizia> ris = new ArrayList<>();
		List<Notizia> N = notizie(query, conditions);

		for (Notizia n : N) 
		{
			ris.add(notizia(n.getId()));
		}
		return ris;
	}

	/*================================================================================================================================================================*/
	
	@Override
	public List<Notizia> notiziePerData() 
	{
		List<Notizia> res = notizieORM("SELECT * FROM  notizia WHERE bozza is false order by datapubblicazione desc ");
		return res;
	}

	@Override
	public List<Notizia> searchNotizie(int idVideogioco) {
		return notizieORM("SELECT * FROM recensione WHERE bozza is false and idvideogioco = ?", idVideogioco);
	}

	



}//fine dao