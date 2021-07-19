package org.generation.italy.UniversoGame.controller;

import java.util.List;

import org.generation.italy.UniversoGame.dao.IDaoNotizia;
import org.generation.italy.UniversoGame.models.Notizia;
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
@RequestMapping("/notizia")
public class ControllerNotizia 
{
	
	@Autowired
	private IDaoNotizia dao;

	/**
	 * Metodo get della classe ControllerNotizia che
	 * restituisce la lista di notizie del database
	 * @return
	 */
	@GetMapping
	public List<Notizia> get() 
	{
		return dao.notizieORM();
	}

	/*================================================================================================================================================================*/

	 /**
     * Metodo getOne della classe ControllerNotizia che
     * restituisce una sola notizia del database specificata dall'id
     * @param id
     * @return
     */
	@GetMapping("/{id}")
	public Notizia getOne(@PathVariable int id) 
	{
		return dao.notizia(id);
	}

	/*================================================================================================================================================================*/

	/**
	 * Metodo add della classe ControllerNotizia che 
	 * aggiunge una notizia al database
	 * @param immagine
	 */
	@PostMapping
	public void add(@RequestBody Notizia notizia)
	{
		dao.add(notizia); 
	}
	
	/*================================================================================================================================================================*/

	/**
	 * Metodo delete della classe ControllerNotizia che 
	 * elimina una notizia dal database
	 * @param id
	 */
	@DeleteMapping("/{id}")
	public void delete(@PathVariable int id) 
	{
		dao.delete(id);
	}

	/*================================================================================================================================================================*/

	/**
	 * Metodo update della classe ControllerNotizia che
	 * modifica una notizia del database
	 * @param immagine
	 */
	@PutMapping
	public void update(@RequestBody Notizia notizia) 
	{
		dao.update(notizia);
	}

}//fine controller
