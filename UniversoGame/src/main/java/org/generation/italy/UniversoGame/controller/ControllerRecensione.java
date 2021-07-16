package org.generation.italy.UniversoGame.controller;

import java.util.List;

import org.generation.italy.UniversoGame.dao.IDaoRecensione;
import org.generation.italy.UniversoGame.models.Recensione;
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
@RequestMapping("/recensione")
public class ControllerRecensione 
{
	
	@Autowired
	private IDaoRecensione dao;
	
	/**
	 * Metodo get della classe ControllerRecensione
	 * che restituisce la lista delle recensioni
	 * del database
	 * @return
	 */
	@GetMapping
	public List<Recensione> get() 
	{
		return dao.recensioni();
	}
	
	/**
	 * Metodo GetOne della classe ControllerRecensione
	 * che restituisce una sola recensione del database
	 * specificata dall'id
	 * @param id
	 * @return
	 */
	@GetMapping("/{id}")
	public Recensione getOne(@PathVariable int id) 
	{
		return dao.recensione(id);
	}
	
	/**
	 * Metodo add dellla classe ControllerRecensione
	 * che aggiunge una recensione al database
	 * @param recensione
	 */
	@PostMapping
	public void add(@RequestBody Recensione recensione)
	{
		dao.add(recensione); 
	}
	
	/**
	 * Metodo delete della classe ControllerRecensione
	 * che elimina una recensione dal database
	 * @param id
	 */
	@DeleteMapping("/{id}")
	public void delete(@PathVariable int id) 
	{
		dao.delete(id);
	}

	/**
	 * Metodo update della classe ControllerRecensione
	 * che modifica una recensione del database
	 * @param recensione
	 */
	@PutMapping
	public void update(@RequestBody Recensione recensione) 
	{
		dao.update(recensione);
	}

}//fine controller
