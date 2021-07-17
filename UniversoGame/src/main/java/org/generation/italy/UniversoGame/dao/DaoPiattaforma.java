package org.generation.italy.UniversoGame.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.generation.italy.UniversoGame.models.Piattaforma;
import org.generation.italy.UniversoGame.util.BasicDao;
import org.generation.italy.UniversoGame.util.IMappablePro;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Repository;

/**
 * Estende BasicDao ed implementa le firme dei metodi di IDaoPiattaforma
 * Contiene il metodo di collegamento al DB e i metodi riguardanti la classe Piattaforma
 * 
 * @author Admin
 *
 */
@Repository
public class DaoPiattaforma extends BasicDao implements IDaoPiattaforma
{

	/**
	 * Costruttore di DaoPiattaforma per la connessione al database univeersogames
	 * tramite /UniversoGame/src/main/resources/application.properties
	 * 
	 * @param dbAddress
	 * @param user
	 * @param password
	 */
	public DaoPiattaforma(
			@Value("${db.address}") String dbAddress, 
			@Value("${db.user}") String user, 
			@Value("${db.password}") String password) 
	{
		super(dbAddress, user, password);
	}

	/*================================================================================================================================================================*/

	/**
	 * Metodo che restituisce la lista di oggetti Piattaforma dal database,
	 * con tutte le loro proprietà
	 * 
	 */
	@Override
	public List<Piattaforma> piattaforme() 
	{
		List<Piattaforma> ris = new ArrayList<>();
		List<Map<String, String>> maps = getAll("SELECT * FROM piattaforma");
		
		for (Map<String, String> map : maps) 
		{
			ris.add(IMappablePro.fromMap(Piattaforma.class, map));
		}
		return ris;
	}
	
	/*================================================================================================================================================================*/

	/**
	 * Metodo che restituisce il dettaglio di uno specifico oggetto 
	 * Pattaforma dal database, con le sue proprietà
	 * 
	 */
	@Override
	public Piattaforma piattaforma(int id) 
	{
		return IMappablePro.fromMap(Piattaforma.class, getOne("SELECT * FROM piattaforma WHERE id = ?", id));
	}
	
	/*================================================================================================================================================================*/

	/**
	 * Metodo CRUD per l'aggiunta di un oggetto Piattaforma 
	 * Restituisce un valore booleano TRUE se l'operazione è andata a buon fine
	 * o FALSE in caso di errore
	 * 
	 */
	@Override
	public boolean add(Piattaforma piattaforma) 
	{
		return isExecute("INSERT INTO piattaforma (nome,produttore) VALUES (?, ?)",
				piattaforma.getNome(),piattaforma.getProduttore());
	}
	
	/*================================================================================================================================================================*/

	/**
	 * Metodo CRUD per l'eliminazione di un oggetto Piattaforma 
	 * Restituisce un valore booleano TRUE se l'operazione è andata a buon fine
	 * o FALSE in caso di errore
	 * 
	 */
	@Override
	public boolean delete(int id) 
	{
		return isExecute("DELETE FROM piattaforma WHERE id = ?", id);
	}
	
	/*================================================================================================================================================================*/

	/**
	 * Metodo CRUD per la modifica di un oggetto Piattaforma 
	 * Restituisce un valore booleano TRUE se l'operazione è andata a buon fine
	 * o FALSE in caso di errore
	 * 
	 */
	@Override
	public boolean update(Piattaforma piattaforma) 
	{
		return isExecute("UPDATE piattaforma SET nome = ?, produttore = ? WHERE id = ?",
				piattaforma.getNome(),piattaforma.getProduttore(),piattaforma.getId() );
	}


}//fine dao