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
	
	@GetMapping
	public List<Notizia> get() 
	{
		return dao.notizie();
	}

	@GetMapping("/{id}")
	public Notizia getOne(@PathVariable int id) 
	{
		return dao.notizia(id);
	}

	@PostMapping
	public void add(@RequestBody Notizia notizia)
	{
		dao.add(notizia); 
	}

	@DeleteMapping("/{id}")
	public void delete(@PathVariable int id) 
	{
		dao.delete(id);
	}

	@PutMapping
	public void update(@RequestBody Notizia notizia) 
	{
		dao.update(notizia);
	}

}//fine controller
