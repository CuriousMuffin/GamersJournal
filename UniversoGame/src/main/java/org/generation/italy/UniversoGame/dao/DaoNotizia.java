package org.generation.italy.UniversoGame.dao;

import java.util.ArrayList;

import java.util.List;
import java.util.Map;

import org.generation.italy.UniversoGame.models.Notizia;
import org.generation.italy.UniversoGame.models.Utente;
import org.generation.italy.UniversoGame.models.Videogioco;
import org.generation.italy.UniversoGame.util.BasicDao;
import org.generation.italy.UniversoGame.util.IMappablePro;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Repository;

/**
 * Dao di notizia che estende BasicDao e implementa l'interfaccia IDaoNotizia
 * @author acer
 *
 */
@Repository
public class DaoNotizia extends BasicDao implements IDaoNotizia
{
	/**
	 * Costruttore di DaoImmagine per la connessione al database che prende i dati da application.properties
	 * @param dbAddress
	 * @param user
	 * @param password
	 */
	public DaoNotizia(
			@Value("${db.address}") String dbAddress, 
			@Value("${db.user}") String user, 
			@Value("${db.password}") String password) {
		super(dbAddress, user, password);
	}
	
	@Override
	public List<Notizia> notizie() 
	{
		List<Notizia> ris = new ArrayList<>();
		
		List<Map<String, String>> maps = getAll("SELECT * FROM notizia");
		
		for (Map<String, String> map : maps) 
		{
			ris.add(IMappablePro.fromMap(Notizia.class, map));
		}
		
		return ris;
	}
	
	@Override
	public Notizia notizia(int id) 
	{	
		Map<String, String> map = getOne("SELECT * FROM notizia WHERE id = ?", id);
//		
		Notizia notizia = IMappablePro.fromMap(Notizia.class, map);
//		
		Map<String,String> mappaUtente = getOne("select * from utente where id = ?", map.get("idutente"));
//		
		notizia.setUtente(IMappablePro.fromMap(Utente.class, mappaUtente));
//		
		Videogioco v = null;
		Map<String,String> mappaVideogioco = getOne("select * from videogioco where id = ?", map.get("idvideogioco"));
		
		List<Map<String,String>> maps = getAll("select piattaforma.nome from videogioco inner join compatibilita on compatibilita.idvideogioco = videogioco.id "
				+ "inner join piattaforma on compatibilita.idpiattaforma = piattaforma.id "
				+ "where compatibilita.idvideogioco = ?",id);
		
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
	
	@Override
	public boolean add(Notizia notizia) 
	{
		return isExecute("insert into notizia (titolo, contenuto, datapubblicazione, bozza) values (?,?,?,?)",
							notizia.getTitolo(), notizia.getContenuto(), notizia.getDataPubblicazione(), notizia.isBozza());
	}

	@Override
	public boolean delete(int id) 
	{
		return isExecute("delete from notizia where id = ?", id);
	}

	@Override
	public boolean update(Notizia notizia) 
	{
		return isExecute("update notizia set titolo = ?, contenuto = ?, datapubblicazione = ?, bozza = ?, idutente = ?, idvideogioco = ? WHERE id =?",
						  notizia.getTitolo(), notizia.getContenuto(), notizia.getDataPubblicazione(), notizia.isBozza(), notizia.getUtente(),
						  notizia.getVideogioco(), notizia.getId());
	}


}//fine dao