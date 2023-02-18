package com.dummyproject.practice.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.dummyproject.practice.models.Dorm;
import com.dummyproject.practice.models.Student;
import com.dummyproject.practice.services.DormService;


@Controller
public class DormController {
	@Autowired
	private DormService dormService;
	
	@GetMapping("/")
	public String index(Model model) {
		model.addAttribute("dorms", dormService.findAll());
		return "index.jsp";
	}	
	@GetMapping("/dorm/new")
	public String newDorm(@ModelAttribute("newDorm") Dorm dorm) {
		return "newDorm.jsp";
	}
	
	@PostMapping("/dorm/new")
	public String postDorm(@Valid @ModelAttribute("newDorm")Dorm dorm, BindingResult result) {
		if(result.hasErrors()) {
			return "newDorm.jsp";
		}
		dormService.addOrUpdate(dorm);
		return "redirect:/";
	}
	@GetMapping ("dorm/details/{dormId}") 
	public String viewDorm(@PathVariable("dormId") Long id,@ModelAttribute("addStudent") Student student, Model model) {
		
		model.addAttribute("dorm", dormService.findOne(id));
		return "viewDorm.jsp";
	}
	
	@GetMapping("/dorm/destroy/{id}")
	public String destroyDorm(@PathVariable("id") Long id) {
		dormService.deleteDorm(id);
		return "redirect:/";
	}


}
