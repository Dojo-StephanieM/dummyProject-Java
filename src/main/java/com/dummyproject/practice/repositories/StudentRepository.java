package com.dummyproject.practice.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.dummyproject.practice.models.Student;



public interface StudentRepository extends CrudRepository<Student, Long> {
	public List<Student> findAll();



}