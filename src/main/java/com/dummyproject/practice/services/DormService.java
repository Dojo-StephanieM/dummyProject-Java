package com.dummyproject.practice.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dummyproject.practice.models.Dorm;
import com.dummyproject.practice.repositories.DormRepository;


@Service
public class DormService {
	@Autowired
	private DormRepository dormRepo;
	
	public List<Dorm> findAll(){
		return dormRepo.findAll();
	}
	public Dorm addOrUpdate(Dorm d) {
		return dormRepo.save(d);
	}
	public Dorm findOne(Long id) {
		return dormRepo.findById(id).orElse(null);
	}
	public void deleteDorm(Long id) {
		dormRepo.deleteById(id);
	}


}
