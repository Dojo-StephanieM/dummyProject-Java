package com.dummyproject.practice.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dummyproject.practice.models.Dorm;
import com.dummyproject.practice.models.Student;
import com.dummyproject.practice.repositories.StudentRepository;


@Service
public class StudentService {
	@Autowired
	private StudentRepository studentRepo;
	
	public List<Student> findAll() {
		return studentRepo.findAll();
	}
	public Student addOrUpdate(Student s) {
		return studentRepo.save(s);
	}
	public Student findOne(Long id) {
		return studentRepo.findById(id).orElse(null);
	}
	public void deleteStudent(Long id) {
		studentRepo.deleteById(id);
	}
	public void removeFromDorm(Student student) {
		student.setDorm(null);
		studentRepo.save(student);
	}
	public void updateDorm(Student student, Dorm dorm) {
		student.setDorm(dorm);
		studentRepo.save(student);
	}
	
}