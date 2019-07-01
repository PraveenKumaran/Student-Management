/**
 * 
 */
package com.praveen.studentmanagement.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.praveen.studentmanagement.domains.Student;
import com.praveen.studentmanagement.services.StudentService;

/**
 * @author Madan
 *
 */
@Controller
@RequestMapping("/students")
public class StudentController {

	@Autowired
	private StudentService service;

	@GetMapping({ "/", "" })
	public String index(Model model) {
		List<Student> students = service.findAll();
		model.addAttribute("students", students);
		return "students/index";
	}

	@GetMapping("/create")
	public String create(Model model) {
		model.addAttribute("student", new Student());
		return "students/add";
	}

	@PostMapping("/save")
	public String save(@ModelAttribute("student") Student student) {
		student = service.save(student);
		return "redirect:/students";
	}

	@GetMapping("/{id}")
	public String getStudent(Model model, @PathVariable("id") Long id) {
		Student student = service.findById(id);
		if(student == null) {
			return "redirect:/not_found";
		}
		model.addAttribute("student", service.findById(id));
		return "students/detail";
	}

	@PostMapping("/{id}/update")
	public String update(@ModelAttribute Student student,@PathVariable("id") Long id) {
		student.setId(id);
		service.save(student);
		return "redirect:/students/" + id;

	}
	
	@GetMapping("/{id}/edit")
	public String edit(@PathVariable("id")Long id,Model model) {
		Student student = service.findById(id);
		if(student == null) {
			return "redirect:/not_found";
		}
		model.addAttribute("student", student);
		return "students/edit";
	}

	@GetMapping("/{id}/delete")
	public String delete(@PathVariable("id") Long id) {
		Student student = service.findById(id);
		if(student == null) {
			return "redirect:/not_found";
		}
		service.delete(student);
		return "redirect:/students";
	}

}
