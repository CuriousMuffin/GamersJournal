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
 * DaoVideogioco Dao che estende BasicDao, contiene il metodo di collegamento al
 * DB e i metodi riguardanti la classe Videogioco
 * 
 * @author Admin
 *
 */
@Repository
public class DaoVideogioco extends BasicDao implements IDaoVideogioco {

	/**
	 * Metodo di collegamento al DB universogames
	 * 
	 * @param dbAddress
	 * @param user
	 * @param password
	 */
	public DaoVideogioco(@Value("${db.address}") String dbAddress, @Value("${db.user}") String user,
			@Value("${db.password}") String password) {
		super(dbAddress, user, password);
	}

	// ===============================================================================================================================================================//

	/**
	 * List<Videogioco> videogiochi() Restituisce la lesta di oggetti Videogioco,
	 * con tutte le loro proprietà
	 * 
	 */
	@Override
	public List<Videogioco> videogiochi() {
		List<Videogioco> ris = new ArrayList<>();

		List<Map<String, String>> maps = getAll("SELECT * FROM videogioco");

		for (Map<String, String> map : maps) {
			ris.add(IMappablePro.fromMap(Videogioco.class, map));
		}
		return ris;
	}

	// ==========METODO
	// ACCESSORIO=====================================================================================================================================//

	/**
	 * List<Videogioco> videogiochiORM() Metodo accessorio che mostra i dettagli
	 * delle proprietà Object object di Videogioco
	 * 
	 */
	@Override
	public List<Videogioco> videogiochiORM() {
		List<Videogioco> ris = new ArrayList<>();
		for (Videogioco v : videogiochi()) {
			ris.add(videogioco(v.getId()));
		}
		return ris;
	}

	// ================================================================================================================================================================//

	/**
	 * Videogioco videogioco(int id) Restituisce il dettaglio di un singolo
	 * Videogioco, con le sue proprietà
	 * 
	 */
	@Override
	public Videogioco videogioco(int id) {
		Videogioco ris = null;
		Map<String, String> map = getOne("SELECT * FROM videogioco WHERE id = ?", id);

		List<Map<String, String>> maps = getAll(
				"select piattaforma.nome from videogioco inner join compatibilita on compatibilita.idvideogioco = videogioco.id "
						+ "inner join piattaforma on compatibilita.idpiattaforma = piattaforma.id "
						+ "where compatibilita.idvideogioco = ?",
						id);

		List<String> comp = new ArrayList<>();

		if (map != null) {
			ris = IMappablePro.fromMap(Videogioco.class, map);

			for (Map<String, String> m : maps) // Permette di mostrare la lista di compatibilità di Videogioco
			{
				String c = m.get("nome");
				comp.add(c);
			}
			ris.setCompatibilita(comp);
		}

		return ris;
	}

	// ================================================================================================================================================================//

	/**
	 * boolean add(Videogioco videogioco) Metodo CRUD per l'aggiunta di un oggetto
	 * Videogioco Restituisce un valore booleano TRUE se l'operazione è andata a
	 * buon fine
	 * 
	 */
	@Override
	public boolean add(Videogioco videogioco) {
		return isExecute(
				"INSERT INTO videogioco (titolo, genere, dataUscita, casaProduttrice, compatibilita) VALUES (?, ?, ?, ?, ?)",
				videogioco.getTitolo(), videogioco.getGenere(), videogioco.getDataUscita(),
				videogioco.getCasaProduttrice(), videogioco.getCompatibilita());
	}

	// ================================================================================================================================================================//

	/**
	 * boolean delete(int id) Metodo CRUD per l'eliminazione di un oggetto
	 * Videogioco Restituisce un valore booleano TRUE se l'operazione è andata a
	 * buon fine
	 * 
	 */
	@Override
	public boolean delete(int id) {
		return isExecute("DELETE FROM videogioco WHERE id = ?", id);
	}

	// ================================================================================================================================================================//

	/**
	 * boolean update(Videogioco videogioco) Metodo CRUD per la modifica di un
	 * oggetto Videogioco Restituisce un valore booleano TRUE se l'operazione è
	 * andata a buon fine
	 * 
	 */
	@Override
	public boolean update(Videogioco videogioco) {
		return isExecute(
				"UPDATE videogioco SET titolo = ?, genere = ?, dataUscita = ?, casaProduttrice = ?, compatibilita = ?, WHERE id = ?",
				videogioco.getTitolo(), videogioco.getGenere(), videogioco.getDataUscita(),
				videogioco.getCasaProduttrice(), videogioco.getCompatibilita(), videogioco.getId());
	}

}// fine dao