/**
 * 
 */
package com.praveen.studentmanagement.respository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.praveen.studentmanagement.domains.Student;

/**
 * @author Madan
 *
 */
public interface StudentRepository extends JpaRepository<Student, Long> {

}
