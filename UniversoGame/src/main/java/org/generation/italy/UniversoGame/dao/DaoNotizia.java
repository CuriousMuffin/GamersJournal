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

@Repository
public class DaoNotizia extends BasicDao implements IDaoNotizia
{

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
		
		for (Map<String, String> map : maps) {
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
		Map<String,String> mappaVideogioco = getOne("select * from videogioco where id = ?", map.get("idvideogioco"));
//		
		notizia.setVideogioco(IMappablePro.fromMap(Videogioco.class, mappaVideogioco));
//		
		return notizia;
	}
	
	@Override
	public boolean add(Notizia notizia) 
	{
		return isExecute("insert into notizia (titolo,contenuto,dataPubblicazione,bozza,utente,videogioco) values (?,?,?,?,?,?)",
							notizia.getTitolo(), notizia.getContenuto(), notizia.getDataPubblicazione(), notizia.isBozza());
							//Qui va l'id dell'autore, Qui va l'id del videogioco);
	}

	@Override
	public boolean delete(int id) 
	{
		return isExecute("delete from notizia where id = ?", id);
	}

	@Override
	public boolean update(Notizia notizia) 
	{
		return isExecute("update notizia set titolo = ?, contenuto = ?, datapubblicazione = ?, bozza = ?, idautore = ?, idvideogioco = ?",
						  notizia.getTitolo(), notizia.getContenuto(), notizia.getDataPubblicazione(), notizia.isBozza());
						//Qui va l'id dell'autore, Qui va l'id del videogioco, notizia.GetId());
	}


}//fine dao