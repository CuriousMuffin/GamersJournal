package org.generation.italy.UniversoGame.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.generation.italy.UniversoGame.models.Videogioco;
import org.generation.italy.UniversoGame.util.BasicDao;
import org.generation.italy.UniversoGame.util.IMappablePro;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Repository;

@Repository
public class DaoVideogioco extends BasicDao implements IDaoVideogioco
{

	public DaoVideogioco(
			@Value("${db.address}") String dbAddress, 
			@Value("${db.user}") String user, 
			@Value("${db.password}") String password) {
		super(dbAddress, user, password);
	}

	@Override
	public List<Videogioco> videogiochi() 
	{
		List<Videogioco> ris = new ArrayList<>();

		List<Map<String, String>> maps = getAll("SELECT * FROM videogioco");

		for (Map<String, String> map : maps) 
		{
			ris.add(IMappablePro.fromMap(Videogioco.class, map));
		}
		return ris;
	}
	
	@Override
	public Videogioco videogioco(int id) 
	{
		Videogioco ris = null;
		Map<String, String> map = getOne("SELECT * FROM videogioco WHERE id = ?", id);
		
		List<Map<String,String>> maps = getAll("select piattaforma.nome from videogioco inner join compatibilita on compatibilita.idvideogioco = videogioco.id "
																+ "inner join piattaforma on compatibilita.idpiattaforma = piattaforma.id "
																+ "where compatibilita.idvideogioco = ?",id);
		
		List<String> comp = new ArrayList<>();
				
		if(map != null)
		{
			ris = IMappablePro.fromMap(Videogioco.class, map);
			
			for(Map<String, String> m : maps)
			{
				String c = m.get("nome");
				comp.add(c);
			}
			ris.setCompatibilita(comp);
		}		
		
		return ris;
	}
	
	@Override
	public boolean add(Videogioco videogioco) 
	{
		return isExecute("INSERT INTO videogioco (titolo, genere, dataUscita, casaProduttrice, compatibilita) VALUES (?, ?, ?, ?, ?)",
				videogioco.getTitolo(), videogioco.getGenere(), videogioco.getDataUscita(), videogioco.getCasaProduttrice(), videogioco.getCompatibilita());
	}

	@Override
	public boolean delete(int id) 
	{
		return isExecute("DELETE FROM videogioco WHERE id = ?", id);
	}

	@Override
	public boolean update(Videogioco videogioco) 
	{
		return isExecute("UPDATE videogioco SET titolo = ?, genere = ?, dataUscita = ?, casaProduttrice = ?, compatibilita = ?, WHERE id = ?", 
				videogioco.getTitolo(), videogioco.getGenere(), videogioco.getDataUscita(), videogioco.getCasaProduttrice(), videogioco.getCompatibilita(), videogioco.getId());
	}


}//fine dao