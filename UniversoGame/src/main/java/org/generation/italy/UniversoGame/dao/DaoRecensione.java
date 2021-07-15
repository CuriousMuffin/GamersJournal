package org.generation.italy.UniversoGame.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.generation.italy.UniversoGame.models.Recensione;
import org.generation.italy.UniversoGame.models.Utente;
import org.generation.italy.UniversoGame.models.Videogioco;
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
		Map<String, String> map = getOne("SELECT * FROM recensione WHERE id = ?", id);
//		
		Recensione recensione = IMappablePro.fromMap(Recensione.class, map);
//		
		Map<String,String> mappaUtente = getOne("select * from utente where id = ?", map.get("idutente"));
//		
		recensione.setUtente(IMappablePro.fromMap(Utente.class, mappaUtente));
//		
		Map<String,String> mappaVideogioco = getOne("select * from videogioco where id = ?", map.get("idvideogioco"));
//		
		recensione.setVideogioco(IMappablePro.fromMap(Videogioco.class, mappaVideogioco));
//		
		return recensione;
	}

	@Override
	public boolean add(Recensione recensione) 
	{
		return isExecute("INSERT INTO recensione (titolo, idimmagine, contenuto, valutazione, idutente, datapubblicazione, approvato, bozza, idvideogioco) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)",
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
		return isExecute("UPDATE recensione SET titolo = ?, idimmagine= ?, contenuto = ?, valutazione = ?, idutente = ?, datapubblicazione = ?, approvato = ?, bozza = ?, idvideogioco = ? WHERE id = ?", 
				recensione.getTitolo(), recensione.getImmagine(), recensione.getContenuto(), recensione.getValutazione(), recensione.getUtente(), recensione.getDataPubblicazione(), 
				recensione.isApprovato(), recensione.isBozza(), recensione.getVideogioco(), recensione.getId());
	}

}//fine dao