package org.generation.italy.UniversoGame.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.generation.italy.UniversoGame.models.Utente;
import org.generation.italy.UniversoGame.util.BasicDao;
import org.generation.italy.UniversoGame.util.IMappablePro;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Repository;

@Repository
public class DaoUtente extends BasicDao implements IDaoUtente
{

	
	/**
	 * Costruttore di DaoUtente per la connessione al database che prende i dati da application.properties
	 * @param dbAddress
	 * @param user
	 * @param password
	 */
	public DaoUtente(
			@Value("${db.address}") String dbAddress, 
			@Value("${db.user}") String user, 
			@Value("${db.password}") String password) {
		super(dbAddress, user, password);
	}

	/**
	 * Metodo che restituisce tutti gli utenti del database
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
	
	/**
	 * Metodo che restituisce un utente specifico del database
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
	/**
	 * Metodo che aggiune un utente al database
	 */
	
	@Override
	public boolean add(Utente utente) 
	{
		return isExecute("INSERT INTO utente (username, password, nickname, admin, idimmagine) VALUES (?, ?, ?, ?, ?)",
				utente.getUsername(), utente.getPassword(), utente.getNickname(), utente.isAdmin(), utente.getImmagine());
	}
	
	/**
	 * Metodo che elimina un utente dal database
	 */

	@Override
	public boolean delete(int id) 
	{
		return isExecute("DELETE FROM utente WHERE id = ?", id);
	}
     
	/**
	 * Metodo che modifica un utente del database
	 */
	
	@Override
	public boolean update(Utente utente) 
	{
		return isExecute("UPDATE prodotto SET username = ?, password = ?, nickname = ?, admin = ?, idimmagine = ? WHERE id = ?", 
				utente.getUsername(), utente.getPassword(), utente.getNickname(), utente.isAdmin(), utente.getImmagine(), utente.getId());
	}

}//fine dao