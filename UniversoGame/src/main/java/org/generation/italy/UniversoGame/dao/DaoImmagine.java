package org.generation.italy.UniversoGame.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.generation.italy.UniversoGame.models.Immagine;
import org.generation.italy.UniversoGame.util.BasicDao;
import org.generation.italy.UniversoGame.util.IMappablePro;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Repository;

@Repository
public class DaoImmagine extends BasicDao implements IDaoImmagine
{

	public DaoImmagine(
			@Value("${db.address}") String dbAddress, 
			@Value("${db.user}") String user, 
			@Value("${db.password}") String password) {
		super(dbAddress, user, password);
									
	}

	@Override
	public List<Immagine> immagini() 
	{
		List<Immagine> ris = new ArrayList<>();
		
		List<Map<String, String>> maps = getAll("SELECT * FROM immagine");
		
		for (Map<String, String> map : maps) {
			ris.add(IMappablePro.fromMap(Immagine.class, map));
		}
		
		return ris;
	}
	
	@Override
	public Immagine immagine(int id) 
	{
		Immagine ris = null;
		
		Map<String, String> map = getOne("SELECT * FROM immagine WHERE id = ?", id);
		
		if (map != null) {
			ris = IMappablePro.fromMap(Immagine.class, map);
		}
		
		return ris;
	}
	
	@Override
	public boolean add(Immagine immagine) 
	{
		return isExecute("insert into immagine (pathimmagine) values (?)", immagine.getPathImmagine());
	}

	@Override
	public boolean delete(int id) 
	{
		return isExecute("delete from immagine where id = ?",id);
	}

	@Override
	public boolean update(Immagine immagine) 
	{
		return isExecute("update immagine set pathimmagine = ? where id = ?", immagine.getPathImmagine(), immagine.getId());
	}


}//fine dao