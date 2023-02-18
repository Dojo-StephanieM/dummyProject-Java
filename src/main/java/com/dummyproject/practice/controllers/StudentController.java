package com.dummyproject.practice.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dummyproject.practice.models.Dorm;
import com.dummyproject.practice.models.Student;
import com.dummyproject.practice.services.DormService;
import com.dummyproject.practice.services.StudentService;


public class StudentController {
	@Autowired
	private StudentService studentService;
	@Autowired
	private DormService dormService;
	
	@GetMapping("/student/new")
	public String newStudent(@ModelAttribute("newStudent")Student student, Model model) {
		 model.addAttribute("dorms", dormService.findAll());
		return "newStudent.jsp";
	}
	@PostMapping("/student/create")
	public String postStudent(@Valid @ModelAttribute("newStudent") Student student, BindingResult result, Model model) {
		if(result.hasErrors()) {
			model.addAttribute("dorms", dormService.findAll());
			return "newStudent.jsp";
		}
		model.addAttribute("dorms", dormService.findAll());
		studentService.addOrUpdate(student);
		return "redirect:/";
	}
	@PostMapping("/student/update/{dormId}")
	public String updateStudents (@PathVariable("dormId") Long dormId, Model model, @RequestParam("id")Long id) {

		Dorm dorm = dormService.findOne(dormId);
		Student student = studentService.findOne(id);
		studentService.updateDorm(student, dorm);


		return "redirect:/dorm/details/{dormId}";
		
	}
	@GetMapping("/student/remove/{id}")
	public String removeStudent(@PathVariable("id") Long id) {
		studentService.removeFromDorm(studentService.findOne(id));
		return "redirect:/";
	}

}

