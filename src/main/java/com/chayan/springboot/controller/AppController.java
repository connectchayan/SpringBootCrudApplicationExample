package com.chayan.springboot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AppController {

	/*@RequestMapping("/")
	public String home(ModelMap modal) {
		modal.addAttribute("title","CRUD Example");
		return "index";
	}*/
	
	 @RequestMapping(value = { "/", "/index" }, method = RequestMethod.GET)
	    public String index(ModelMap model) {
	 
		 model.addAttribute("title","Task Manager");
	         
	        return "index";
	    }
	
	
	@RequestMapping("/partials/{page}")
	String partialHandler(@PathVariable("page") final String page) {
		return page;
	}

}
