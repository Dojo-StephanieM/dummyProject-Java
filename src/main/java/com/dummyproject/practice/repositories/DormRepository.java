package com.dummyproject.practice.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.dummyproject.practice.models.Dorm;



public interface DormRepository extends CrudRepository<Dorm, Long> {
	public List<Dorm> findAll();
	


}