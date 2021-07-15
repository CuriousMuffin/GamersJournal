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

	public DaoUtente(
			@Value("${db.address}") String dbAddress, 
			@Value("${db.user}") String user, 
			@Value("${db.password}") String password) {
		super(dbAddress, user, password);
	}

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
	
	@Override
	public boolean add(Utente utente) 
	{
		return isExecute("INSERT INTO utente (username, password, nickname, admin,  immagine) VALUES (?, ?, ?, ?, ?)",
				utente.getUsername(), utente.getPassword(), utente.getNickname(), utente.isAdmin(), utente.getImmagine());
	}

	@Override
	public boolean delete(int id) 
	{
		return isExecute("DELETE FROM utente WHERE id = ?", id);
	}

	@Override
	public boolean update(Utente utente) 
	{
		return isExecute("UPDATE prodotto SET username = ?, password = ?, nickname = ?, admin = ?, immagine = ?, WHERE id = ?", 
				utente.getUsername(), utente.getPassword(), utente.getNickname(), utente.isAdmin(), utente.getImmagine(), utente.getId());
	}

}//fine dao
