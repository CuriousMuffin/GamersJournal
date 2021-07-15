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
	
	@GetMapping
	public List<Videogioco> get() 
	{
		return dao.videogiochi();
	}

	@GetMapping("/{id}")
	public Videogioco getOne(@PathVariable int id) 
	{
		return dao.videogioco(id);
	}

	@PostMapping
	public void add(@RequestBody Videogioco videogioco)
	{
		dao.add(videogioco); 
	}

	@DeleteMapping("/{id}")
	public void delete(@PathVariable int id) 
	{
		dao.delete(id);
	}

	@PutMapping
	public void update(@RequestBody Videogioco videogioco) 
	{
		dao.update(videogioco);
	}

}//fine controller
