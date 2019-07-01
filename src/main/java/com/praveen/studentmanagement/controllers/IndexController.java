/**
 * 
 */
package com.praveen.studentmanagement.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * @author Madan
 *
 */
@Controller
public class IndexController {
	
	@GetMapping("")
	public String index() {
		return "index";
	}
	
	@GetMapping("/not_found")
	public String notFound() {
		return "not_found";
	}

}
