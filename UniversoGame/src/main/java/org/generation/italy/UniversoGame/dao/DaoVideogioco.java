package org.generation.italy.UniversoGame.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.generation.italy.UniversoGame.models.Videogioco;
import org.generation.italy.UniversoGame.util.BasicDao;
import org.generation.italy.UniversoGame.util.IMappablePro;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Repository;

/**
 * Estende BasicDao ed implementa le firme dei metodi di IDaoVideogioco
 * Contiene il metodo di collegamento al DB e i metodi riguardanti la classe Videogioco
 * 
 * @author Admin
 *
 */
@Repository
public class DaoVideogioco extends BasicDao implements IDaoVideogioco 
{

	/**
	 * Costruttore di DaoVideogioco per la connessione al database univeersogames
	 * tramite /UniversoGame/src/main/resources/application.properties
	 * 
	 * @param dbAddress
	 * @param user
	 * @param password
	 */
	public DaoVideogioco(
			@Value("${db.address}") String dbAddress, 
			@Value("${db.user}") String user,
			@Value("${db.password}") String password) 
	{
		super(dbAddress, user, password);
	}

	/*================================================================================================================================================================*/

	/**
	 * Metodo che restituisce la lista di oggetti Videogioco dal database,
	 * con tutte le loro proprietà
	 * 
	 */
	@Override
	public List<Videogioco> videogiochi() 
	{
		List<Videogioco> ris = new ArrayList<>();

		List<Map<String, String>> maps = getAll("SELECT * FROM videogioco");

		for (Map<String, String> map : maps) {
			ris.add(IMappablePro.fromMap(Videogioco.class, map));
		}
		return ris;
	}

	/*==========METODO ACCESSORIO=====================================================================================================================================*/

	/**
	 * Metodo accessorio che restituisce i dettagli delle proprietà 
	 * Object object di Videogioco
	 * 
	 */
	@Override
	public List<Videogioco> videogiochiORM() 
	{
		List<Videogioco> ris = new ArrayList<>();
		
		for (Videogioco v : videogiochi()) 
		{
			ris.add(videogioco(v.getId()));
		}
		return ris;
	}

	/*================================================================================================================================================================*/

	/**
	 * Metodo che restituisce il dettaglio di uno specifico oggetto 
	 * Videogioco dal database, con le sue proprietà
	 * 
	 */
	@Override
	public Videogioco videogioco(int id) 
	{
		Videogioco ris = null;
		Map<String, String> map = getOne("SELECT * FROM videogioco WHERE id = ?", id);

		List<Map<String, String>> maps = getAll("select piattaforma.nome from videogioco "
											+ "inner join compatibilita on compatibilita.idvideogioco = videogioco.id "
											+ "inner join piattaforma on compatibilita.idpiattaforma = piattaforma.id "
											+ "where compatibilita.idvideogioco = ?", id);

		List<String> comp = new ArrayList<>(); // Permette di mostrare la lista di compatibilità di Videogioco

		if (map != null) 
		{
			ris = IMappablePro.fromMap(Videogioco.class, map);

			for (Map<String, String> m : maps) 
			{
				String c = m.get("nome");
				comp.add(c);
			}
			ris.setCompatibilita(comp);
		}

		return ris;
	}

	/*================================================================================================================================================================*/

	/**
	 * Metodo CRUD per l'aggiunta di un oggetto Videogioco 
	 * Restituisce un valore booleano TRUE se l'operazione è andata a buon fine
	 * o FALSE in caso di errore
	 * 
	 */
	@Override
	public boolean add(Videogioco videogioco) 
	{
		return isExecute(
				"INSERT INTO videogioco (titolo, genere, dataUscita, casaProduttrice, compatibilita) VALUES (?, ?, ?, ?, ?)",
				videogioco.getTitolo(), videogioco.getGenere(), videogioco.getDataUscita(),
				videogioco.getCasaProduttrice(), videogioco.getCompatibilita());
	}

	/*================================================================================================================================================================*/

	/**
	 * Metodo CRUD per l'eliminazione di un oggetto Videogioco 
	 * Restituisce un valore booleano TRUE se l'operazione è andata a buon fine
	 * o FALSE in caso di errore
	 * 
	 */
	@Override
	public boolean delete(int id) 
	{
		return isExecute("DELETE FROM videogioco WHERE id = ?", id);
	}

	/*================================================================================================================================================================*/

	/**
	 * Metodo CRUD per la modifica di un oggetto Videogioco 
	 * Restituisce un valore booleano TRUE se l'operazione è andata a buon fine
	 * o FALSE in caso di errore
	 * 
	 */
	@Override
	public boolean update(Videogioco videogioco) 
	{
		return isExecute(
				"UPDATE videogioco SET titolo = ?, genere = ?, dataUscita = ?, casaProduttrice = ?, compatibilita = ?, WHERE id = ?",
				videogioco.getTitolo(), videogioco.getGenere(), videogioco.getDataUscita(),
				videogioco.getCasaProduttrice(), videogioco.getCompatibilita(), videogioco.getId());
	}

}//fine DaoVideogioco