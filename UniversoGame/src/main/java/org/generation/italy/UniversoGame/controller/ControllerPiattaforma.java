package org.generation.italy.UniversoGame.controller;

import java.util.List;

import org.generation.italy.UniversoGame.dao.IDaoPiattaforma;
import org.generation.italy.UniversoGame.models.Piattaforma;
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
@RequestMapping("/piattaforma")
public class ControllerPiattaforma 
{
	
	@Autowired
	private IDaoPiattaforma dao;
	
	/**
	 * Metodo get della classe ControllerPiattaforma che
	 * restituisce la lista di  piattaforme del database
	 * @return
	 */
	@GetMapping
	public List<Piattaforma> get() 
	{
		return dao.piattaforme();
	}

	 /**
     * Metodo getOne della classe ControllerPiattaforma che
     * restituisce una sola piattaforma del database specificata dall'id
     * @param id
     * @return
     */
	@GetMapping("/{id}")
	public Piattaforma getOne(@PathVariable int id) 
	{
		return dao.piattaforma(id);
	}

	/**
	 * Metodo add della classe ControllerPiattaforma che 
	 * aggiunge una piattaforma al database
	 * @param immagine
	 */
	@PostMapping
	public void add(@RequestBody Piattaforma piattaforma)
	{
		dao.add(piattaforma); 
	}

	/**
	 * Metodo delete della classe ControllerPiattaforma che 
	 * elimina una piattaforma dal database
	 * @param id
	 */
	@DeleteMapping("/{id}")
	public void delete(@PathVariable int id) 
	{
		dao.delete(id);
	}

	/**
	 * Metodo update della classe ControllerPiattaforma che
	 * modifica una piattaforma del database
	 * @param immagine
	 */
	@PutMapping
	public void update(@RequestBody Piattaforma piattaforma) 
	{
		dao.update(piattaforma);
	}

}//fine controller
