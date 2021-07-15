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
	
	@GetMapping
	public List<Immagine> get() 
	{
		return dao.immagini();
	}

	@GetMapping("/{id}")
	public Immagine getOne(@PathVariable int id) 
	{
		return dao.immagine(id);
	}

	@PostMapping
	public void add(@RequestBody Immagine immagine)
	{
		dao.add(immagine); 
	}

	@DeleteMapping("/{id}")
	public void delete(@PathVariable int id) 
	{
		dao.delete(id);
	}

	@PutMapping
	public void update(@RequestBody Immagine immagine) 
	{
		dao.update(immagine);
	}

}//fine controller
