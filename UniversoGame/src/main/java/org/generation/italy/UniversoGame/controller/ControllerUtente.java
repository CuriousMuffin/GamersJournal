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
	
	@GetMapping
	public List<Utente> get() 
	{
		return dao.utenti();
	}

	@GetMapping("/{id}")
	public Utente getOne(@PathVariable int id) 
	{
		return dao.utente(id);
	}

	@PostMapping
	public void add(@RequestBody Utente utente)
	{
		dao.add(utente); 
	}

	@DeleteMapping("/{id}")
	public void delete(@PathVariable int id) 
	{
		dao.delete(id);
	}

	@PutMapping
	public void update(@RequestBody Utente utente) 
	{
		dao.update(utente);
	}

}//fine controller
