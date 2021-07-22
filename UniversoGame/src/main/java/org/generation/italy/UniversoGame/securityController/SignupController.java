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
			return "<html>\n"
				 + "	<head>\n"
				 + "		<title>Home page</title>\n"
				 + "		<link href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M\" crossorigin=\"anonymous\">"
				 + "		<link rel=\"stylesheet\" href=\"../css/styleMain.css\" />\n"
				 + "	</head>\n"
			  	 + "<body>\n"
				 + "	<div class=\"boxSignup\">"
			  	 + "		<form>"
				 + "			<h3>Hey, new face; welcome into the mothership!</h3>\n"
				 + "			<button onclick=\"location.href='/login.html'\" type=\"button\">Log-In</button>\n"
				 + "		</form>"
				 + "	</div>\n"
				 + "	</body>\n"
				 + "</html>";
		}
		else
		{
			return "<html>\n"
				 + "	<head>\n"
				 + "		<title>Home page</title>\n"
				 + "		<link href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M\" crossorigin=\"anonymous\">"
				 + "		<link rel=\"stylesheet\" href=\"../css/styleMain.css\" />\n"
				 + "	</head>\n"
				 + "<body>\n"
				 + "	<div class=\"boxSignup\">"
				 + "		<form>"
				 + "			<h1>Nooope, email or username already in use. Sorry ;) </h1>\n"
				 + "			<h3>Maybe you wanted to login</h3><button onclick=\"location.href='/login.html'\" type=\"button\">Log-In</button>\n"
				 + "			<h3>Let's try again, shall we?</h3><button onclick=\"location.href='/signup.html'\" type=\"button\">SignUp</button>\n"
				 + "		</form>"
				 + "	</div>\n"
				 + "	</body>\n"
				 + "</html>";
		}
	}
}//fine SignupController