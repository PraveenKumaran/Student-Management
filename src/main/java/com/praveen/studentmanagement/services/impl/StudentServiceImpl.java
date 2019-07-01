/**
 * 
 */
package com.praveen.studentmanagement.services.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.praveen.studentmanagement.domains.Student;
import com.praveen.studentmanagement.respository.StudentRepository;
import com.praveen.studentmanagement.services.StudentService;

/**
 * @author Madan
 *
 */
@Service
@Transactional
public class StudentServiceImpl implements StudentService {
	
	@Autowired
	private StudentRepository repository;

	@Override
	public List<Student> findAll() {
		return repository.findAll();
	}

	@Override
	public Student findById(Long id) {
		return repository.findById(id).orElse(null);
	}

	@Override
	public Student save(Student t) {
		return repository.save(t);
	}

	@Override
	public void delete(Student t) {
		repository.delete(t);
	}

	@Override
	public void deleteById(Long id) {
		repository.deleteById(id);
	}

}
