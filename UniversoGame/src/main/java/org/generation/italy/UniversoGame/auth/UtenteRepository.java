package org.generation.italy.UniversoGame.auth;

import org.generation.italy.UniversoGame.models.Utente;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UtenteRepository extends CrudRepository<Utente, Integer>, UserDAO 
{

}
