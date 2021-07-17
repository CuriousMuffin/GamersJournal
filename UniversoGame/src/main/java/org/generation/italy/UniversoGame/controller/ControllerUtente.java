package org.generation.italy.UniversoGame.controller;

import java.util.List;

import org.generation.italy.UniversoGame.dao.IDaoUtente;
import org.generation.italy.UniversoGame.models.Utente;
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
@RequestMapping("/utente")
public class ControllerUtente 
{
	
	@Autowired
	private IDaoUtente dao;
	
	/*================================================================================================================================================================*/

	/**
	 * Metodo get della classe ControllerUtente
	 * che restituisce la lista degli utenti del database
	 * 
	 * @return
	 */
	@GetMapping
	public List<Utente> get() 
	{
		return dao.utenti();
	}

	/*================================================================================================================================================================*/

	/**
	 * Metodo GetOne della classe ControllerUtente
	 * che restituisce un solo utente del database specificato dall'id
	 * 
	 * @param id
	 * @return
	 */
	@GetMapping("/{id}")
	public Utente getOne(@PathVariable int id) 
	{
		return dao.utente(id);
	}

	/*================================================================================================================================================================*/

	/**
	 * Metodo add della classe ControllerUtente
	 * che aggiunge un utente al database
	 * 
	 * @param recensione
	 * @param utente
	 */
	@PostMapping
	public boolean add(@RequestBody Utente utente)
	{
		return dao.add(utente); 
	}

	/*================================================================================================================================================================*/

	/**
	 * Metodo delete della classe ControllerUtente
	 * che elimina un utente dal database
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
	 * Metodo update della classe ControllerUtente
	 * che modifica un utente del database
	 * 
	 * @param recensione
	 * @param utente
	 */
	@PutMapping
	public boolean update(@RequestBody Utente utente) 
	{
		return dao.update(utente);
	}

}//fine controller
