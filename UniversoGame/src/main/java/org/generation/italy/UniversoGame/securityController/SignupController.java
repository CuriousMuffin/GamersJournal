package org.generation.italy.UniversoGame.securityController;

import org.generation.italy.UniversoGame.auth.AuthService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/signup")
public class SignupController 
{
	@Autowired
	private AuthService authService;

	@PostMapping
	public String signup(@RequestParam String email, @RequestParam String username, @RequestParam String password) 
	{
		if(authService.signup(email, username, password) == true)
		{
		return "<h3>Hey, new face; welcome into the mothership!</h3>"
			 + "<button onclick=\"location.href='/login'\" type=\"button\">Log-In</button>";
		}
		else
		{
			return "<h1>Nooope, email or username already in use; sorry ;) </h1>"
				 + "<div><h3>Maybe you wanted to login</h3><button onclick=\"location.href='/login.html'\" type=\"button\">Log-In</button></div>"
				 + "<div><h3>Let's try again, shall we?</h3><button onclick=\"location.href='/signup.html'\" type=\"button\">SignUp</button></div>";
		}
	}
}