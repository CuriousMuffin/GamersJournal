package org.generation.italy.UniversoGame.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.generation.italy.UniversoGame.models.Utente;
import org.generation.italy.UniversoGame.util.BasicDao;
import org.generation.italy.UniversoGame.util.IMappablePro;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Repository;

/**
 * Estende BasicDao ed implementa le firme dei metodi di IDaoUtente
 * Contiene il metodo di collegamento al DB e i metodi riguardanti la classe Utente.
 * 
 * @author Admin
 *
 */
@Repository
public class DaoUtente extends BasicDao implements IDaoUtente
{

	/**
	 * Costruttore di DaoUtente per la connessione al database universogames
	 * tramite /UniversoGame/src/main/resources/application.properties
	 * 
	 * @param dbAddress
	 * @param user
	 * @param password
	 */
	public DaoUtente(
			@Value("${db.address}") String dbAddress, 
			@Value("${db.user}") String user, 
			@Value("${db.password}") String password) 
	{
		super(dbAddress, user, password);
	}
	
	/*================================================================================================================================================================*/

	/**
	 * Metodo che restituisce la lista di oggetti Utente dal database,
	 * con tutte le loro proprietà
	 * 
	 */
	@Override
	public List<Utente> utenti() 
	{
		List<Utente> ris = new ArrayList<>();

		List<Map<String, String>> maps = getAll("SELECT * FROM utente");

		for (Map<String, String> map : maps) 
		{
			ris.add(IMappablePro.fromMap(Utente.class, map));
		}
		return ris;
	}
	
	/*================================================================================================================================================================*/

	/**
	 * Metodo che restituisce il dettaglio di uno specifico oggetto 
	 * Utente dal database, con le sue proprietà
	 * 
	 */
	@Override
	public Utente utente(int id) 
	{
		Utente ris = null;
		Map<String, String> map = getOne("SELECT * FROM utente WHERE id = ?", id);

		if(map != null)
		{
			ris = IMappablePro.fromMap(Utente.class, map);	
		}
		return ris;
	}
	
	/*================================================================================================================================================================*/

	/**
	 * Metodo CRUD per l'aggiunta di un oggetto Utente 
	 * Restituisce un valore booleano TRUE se l'operazione è andata a buon fine
	 * o FALSE in caso di errore
	 * 
	 */
	@Override
	public boolean add(Utente utente) 
	{
		return isExecute("INSERT INTO utente (username, password, nickname, admin, idimmagine) VALUES (?, ?, ?, ?, ?)",
				utente.getUsername(), utente.getPassword(), utente.getUsername(), utente.getRuolo());
	}
	
	/*================================================================================================================================================================*/

	/**
	 * Metodo CRUD per l'eliminazione di un oggetto Utente 
	 * Restituisce un valore booleano TRUE se l'operazione è andata a buon fine
	 * o FALSE in caso di errore
	 * 
	 */
	@Override
	public boolean delete(int id) 
	{
		return isExecute("DELETE FROM utente WHERE id = ?", id);
	}
	
	/*================================================================================================================================================================*/

	/**
	 * Metodo CRUD per l'eliminazione di un oggetto Utente 
	 * Restituisce un valore booleano TRUE se l'operazione è andata a buon fine
	 * o FALSE in caso di errore
	 * 
	 */
	@Override
	public boolean update(Utente utente) 
	{
		return isExecute("UPDATE prodotto SET username = ?, password = ?, nickname = ?, admin = ?, idimmagine = ? WHERE id = ?", 
				utente.getUsername(), utente.getPassword(), utente.getUsername(), utente.getRuolo(), utente.getId());
	}

}//fine DaoUtente