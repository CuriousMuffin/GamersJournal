package org.generation.italy.UniversoGame.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.generation.italy.UniversoGame.models.Piattaforma;
import org.generation.italy.UniversoGame.util.BasicDao;
import org.generation.italy.UniversoGame.util.IMappablePro;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Repository;

@Repository
public class DaoPiattaforma extends BasicDao implements IDaoPiattaforma
{

	public DaoPiattaforma(
			@Value("${db.address}") String dbAddress, 
			@Value("${db.user}") String user, 
			@Value("${db.password}") String password) {
		super(dbAddress, user, password);
	}

	
	@Override
	public List<Piattaforma> piattaforme() 
	{
		List<Piattaforma> ris = new ArrayList<>();
List<Map<String, String>> maps = getAll("SELECT * FROM piattaforma");
		
		for (Map<String, String> map : maps) {
			// al metodo fromMap invocato in maniera statica passo la class e la mappa
			ris.add(IMappablePro.fromMap(Piattaforma.class, map));
		}
		
		return ris;
	}
	
	@Override
	public Piattaforma piattaforma(int id) 
	{
		return IMappablePro.fromMap(Piattaforma.class, 
				getOne("SELECT * FROM piattaforma WHERE id = ?", 
						id)
				);
	}
	
	/**
	 * create table piattaforma
(
	id int primary key auto_increment,
    nome varchar(200),
    produttore varchar(200)
);
	 */
	
	
	
	@Override
	public boolean add(Piattaforma piattaforma) 
	{
		return isExecute("INSERT INTO piattaforma (nome,produttore) VALUES (?, ?)",
				piattaforma.getNome(),piattaforma.getProduttore()
				);
	}
                                                                                                   
	@Override
	public boolean delete(int id) 
	{
		return isExecute("DELETE FROM piattaforma WHERE id = ?", id);
	}

	@Override
	public boolean update(Piattaforma piattaforma) 
	{
		return isExecute("UPDATE piattaforma SET nome = ?, produttore = ?"
				+ " WHERE id = ?",piattaforma.getNome(),piattaforma.getProduttore(),piattaforma.getId() );
	}


}//fine dao