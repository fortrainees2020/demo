package com.boot;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
@RestController
public class HelloController {	
	@GetMapping("/hello")
	public String greet()
	{	return ("Welcome to Spring Boot!!!!!!!!!!!!!!");	}
}
