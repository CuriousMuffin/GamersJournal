package org.generation.italy.UniversoGame.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.generation.italy.UniversoGame.models.Immagine;
import org.generation.italy.UniversoGame.util.BasicDao;
import org.generation.italy.UniversoGame.util.IMappablePro;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Repository;

/**
 * Estende BasicDao ed implementa le firme dei metodi di IDaoImmagine
 * Contiene il metodo di collegamento al DB e i metodi riguardanti la classe Immagine
 * 
 * @author Admin
 *
 */
@Repository
public class DaoImmagine extends BasicDao implements IDaoImmagine
{
	
	/**
	 * Costruttore di DaoImmagine per la connessione al database univeersogames
	 * tramite /UniversoGame/src/main/resources/application.properties
	 * 
	 * @param dbAddress
	 * @param user
	 * @param password
	 */
	public DaoImmagine(
			@Value("${db.address}") String dbAddress, 
			@Value("${db.user}") String user, 
			@Value("${db.password}") String password) 
	{
		super(dbAddress, user, password);							
	}
	
	/*================================================================================================================================================================*/

	/**
	 * Metodo che restituisce la lista di oggetti Immagine dal database,
	 * con tutte le loro proprietà
	 * 
	 */
	@Override
	public List<Immagine> immagini() 
	{
		List<Immagine> ris = new ArrayList<>();
		
		List<Map<String, String>> maps = getAll("SELECT * FROM immagine");
		
		for (Map<String, String> map : maps) {
			ris.add(IMappablePro.fromMap(Immagine.class, map));
		}
		
		return ris;
	}
	
	/*================================================================================================================================================================*/

	/**
	 * Metodo che restituisce il dettaglio di uno specifico oggetto 
	 * Immagine dal database, con le sue proprietà
	 * 
	 */
	@Override
	public Immagine immagine(int id) 
	{
		Immagine ris = null;
		
		Map<String, String> map = getOne("SELECT * FROM immagine WHERE id = ?", id);
		
		if (map != null) {
			ris = IMappablePro.fromMap(Immagine.class, map);
		}
		return ris;
	}
	
	/*================================================================================================================================================================*/

	/**
	 * Metodo CRUD per l'aggiunta di un oggetto Immagine 
	 * Restituisce un valore booleano TRUE se l'operazione è andata a buon fine
	 * o FALSE in caso di errore
	 * 
	 */
	@Override
	public boolean add(Immagine immagine) 
	{
		return isExecute("insert into immagine (pathimmagine) values (?)", immagine.getPathImmagine());
	}

	/*================================================================================================================================================================*/

	/**
	 * Metodo CRUD per l'eliminazione di un oggetto Immagine 
	 * Restituisce un valore booleano TRUE se l'operazione è andata a buon fine
	 * o FALSE in caso di errore
	 * 
	 */
	@Override
	public boolean delete(int id) 
	{
		return isExecute("delete from immagine where id = ?",id);
	}
	
	/*================================================================================================================================================================*/

	/**
	 * Metodo CRUD per la modifica di un oggetto Immagine 
	 * Restituisce un valore booleano TRUE se l'operazione è andata a buon fine
	 * o FALSE in caso di errore
	 * 
	 */
	@Override
	public boolean update(Immagine immagine) 
	{
		return isExecute("update immagine set pathimmagine = ? where id = ?", immagine.getPathImmagine(), immagine.getId());
	}

}//fine dao