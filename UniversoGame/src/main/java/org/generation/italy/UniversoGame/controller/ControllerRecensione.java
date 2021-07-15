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
	
	@GetMapping
	public List<Recensione> get() 
	{
		return dao.recensioni();
	}

	@GetMapping("/{id}")
	public Recensione getOne(@PathVariable int id) 
	{
		return dao.recensione(id);
	}

	@PostMapping
	public void add(@RequestBody Recensione recensione)
	{
		dao.add(recensione); 
	}

	@DeleteMapping("/{id}")
	public void delete(@PathVariable int id) 
	{
		dao.delete(id);
	}

	@PutMapping
	public void update(@RequestBody Recensione recensione) 
	{
		dao.update(recensione);
	}

}//fine controller
