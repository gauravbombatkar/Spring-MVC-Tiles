package com;

import java.util.List;
/**
 * 
 * @author Gaurav Bombatkar
 *
 */
public interface StudentDao    {
	public Boolean saveStudent(Student student);

	public List<Student> studentList();

	public Student studentGetId(Integer id);

	public Boolean studentDelete(Integer id);

	public Long studentCount();
	
	public List<Student> viewListMca();
	
	public List<Student> viewListBe();
	
	public List<Student> viewListMtech();
	
	public List<Student> viewListMsc();
	
}
