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
	public String signup(@RequestParam String email, @RequestParam String username, @RequestParam String password) {
		authService.signup(email, username, password);
		return "<h1>Hey, new face; welcome into the mothership!</h1>\r\n"
				+ "<button onclick=\"location.href='/login'\" type=\"button\">\r\n"
				+ " Log-In</button>\r\n";
	}
}