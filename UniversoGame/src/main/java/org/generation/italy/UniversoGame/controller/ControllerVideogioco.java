package org.generation.italy.UniversoGame.controller;

import java.util.List;

import org.generation.italy.UniversoGame.dao.IDaoVideogioco;
import org.generation.italy.UniversoGame.models.Videogioco;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/videogioco")
public class ControllerVideogioco 
{
	
	@Autowired
	private IDaoVideogioco dao;
	
	/*================================================================================================================================================================*/

	/**
	 * Metodo get della classe ControllerVideogioco
	 * che restituisce la lista dei videogiochi
	 * del database
	 * 
	 * @return
	 */
	@GetMapping
	public List<Videogioco> get()
	{
		return dao.videogiochiORM();
	}

	/*================================================================================================================================================================*/

	/**
	 * Metodo GetOne della classe ControllerVideogioco
	 * che restituisce un solo videogioco del database
	 * specificato dall'id
	 * 
	 * @param id
	 * @return
	 */
	@GetMapping("/{id}")
	public Videogioco getOne(@PathVariable int id) 
	{
		return dao.videogioco(id);
	}
	
	
	@GetMapping("/cerca/{titoloVG}")
	public List<Videogioco> getAllVGbyTitles(@PathVariable String titoloVG) 
	{
		return dao.ricercaVideogiochibyName(titoloVG);
	}

	/*================================================================================================================================================================*/

	/**
	 * Metodo add della classe ControllerVideogioco
	 * che aggiunge un videogioco al database
	 * 
	 * @param videogioco
	 */
	@PostMapping
	public boolean add(@RequestBody Videogioco videogioco)
	{
		return dao.add(videogioco); 
	}

	/*================================================================================================================================================================*/

	/**
	 * Metodo delete della classe ControllerVideogioco
	 * che elimina un videogioco dal database
	 * 
	 * @param id
	 */
	@DeleteMapping("/{id}")
	public boolean delete(@PathVariable int id) 
	{
		return dao.delete(id);
	}

	/*================================================================================================================================================================*/

	/**
	 * Metodo update della classe ControllerVideogioco
	 * che modifica un videogioco del database
	 * 
	 * @param videogioco
	 */
	@PutMapping
	public boolean update(@RequestBody Videogioco videogioco) 
	{
		return dao.update(videogioco);
	}

}//fine controller
