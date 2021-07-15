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
	
	@GetMapping
	public List<Piattaforma> get() 
	{
		return dao.piattaforme();
	}

	@GetMapping("/{id}")
	public Piattaforma getOne(@PathVariable int id) 
	{
		return dao.piattaforma(id);
	}

	@PostMapping
	public void add(@RequestBody Piattaforma piattaforma)
	{
		dao.add(piattaforma); 
	}

	@DeleteMapping("/{id}")
	public void delete(@PathVariable int id) 
	{
		dao.delete(id);
	}

	@PutMapping
	public void update(@RequestBody Piattaforma piattaforma) 
	{
		dao.update(piattaforma);
	}

}//fine controller
