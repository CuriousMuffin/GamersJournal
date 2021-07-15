package org.generation.italy.UniversoGame.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.generation.italy.UniversoGame.models.Recensione;
import org.generation.italy.UniversoGame.util.BasicDao;
import org.generation.italy.UniversoGame.util.IMappablePro;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Repository;

@Repository
public class DaoRecensione extends BasicDao implements IDaoRecensione
{

	public DaoRecensione(
			@Value("${db.address}") String dbAddress, 
			@Value("${db.user}") String user, 
			@Value("${db.password}") String password) {
		super(dbAddress, user, password);
	}
	
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
	
	@Override
	public Recensione recensione(int id) 
	{
		Recensione ris = null;
		
		Map<String, String> map = getOne("SELECT * FROM recensione WHERE id = ?", id);
		
		if (map != null) {
			ris = IMappablePro.fromMap(Recensione.class, map);
		}
		
		return ris;
	}

	@Override
	public boolean add(Recensione recensione) 
	{
		return isExecute("INSERT INTO recensione (titolo, idCopertina, contenuto, valutazione, idAutore, dataPubblicazione, approvato, bozza, idVideogioco) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)",
				recensione.getTitolo(), recensione.getImmagine(), recensione.getContenuto(), recensione.getValutazione(), recensione.getUtente(), recensione.getDataPubblicazione(), 
				recensione.isApprovato(), recensione.isBozza(), recensione.getVideogioco());
	}

	@Override
	public boolean delete(int id) 
	{
		return isExecute("DELETE FROM recensione WHERE id = ?", id);
	}

	@Override
	public boolean update(Recensione recensione) 
	{
		return isExecute("UPDATE recensione SET titolo = ?, idCopertina = ?, contenuto = ?, valutazione = ?, idAutore = ?, dataPubblicazione = ?, approvato = ?, bozza = ?, idVideogioco = ?, WHERE id = ?", 
				recensione.getTitolo(), recensione.getImmagine(), recensione.getContenuto(), recensione.getValutazione(), recensione.getUtente(), recensione.getDataPubblicazione(), 
				recensione.isApprovato(), recensione.isBozza(), recensione.getVideogioco(), recensione.getId());
	}

}//fine dao