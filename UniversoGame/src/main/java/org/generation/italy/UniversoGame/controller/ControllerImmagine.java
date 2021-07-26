package org.generation.italy.UniversoGame.controller;

import java.util.List;

import org.generation.italy.UniversoGame.dao.IDaoImmagine;
import org.generation.italy.UniversoGame.models.Immagine;
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
@RequestMapping("/immagine")
public class ControllerImmagine 
{
	
	@Autowired
	private IDaoImmagine dao;
	
	/*================================================================================================================================================================*/

	/**
	 * Metodo get della classe ControllerImmagine che
	 * restituisce la lista di immagini del database
	 * 
	 * @return
	 */
	@GetMapping
	public List<Immagine> get() 
	{
		return dao.immagini();
	}
	
	/*================================================================================================================================================================*/

    /**
     * Metodo getOne della classe ControllerImmagine che
     * restituisce una sola immagine del database specificata dall'id
     * 
     * @param id
     * @return
     */
	@GetMapping("/{id}")
	public Immagine getOne(@PathVariable int id) 
	{
		return dao.immagine(id);
	}

	/*================================================================================================================================================================*/

	/**
	 * Metodo add della classe ControllerImmagine che 
	 * aggiunge un immagine al database
	 * 
	 * @param immagine
	 */
	@PostMapping
	public int add(@RequestBody Immagine immagine)
	{
		return dao.add(immagine); 
	}

	/*================================================================================================================================================================*/

	/**
	 * Metodo delete della classe ControllerImmagine che 
	 * elimina un immagine dal database
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
	 * Metodo update della classe ControllerImmagine che
	 * modifica un immagine del database
	 * 
	 * @param immagine
	 */
	@PutMapping
	public boolean update(@RequestBody Immagine immagine) 
	{
		return dao.update(immagine);
	}

}//fine controller
