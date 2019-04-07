package com;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * 
 * @author Gaurav Bombatkar
 *
 */
@Repository
public class StudentImpl implements StudentDao {
	@Autowired
	SessionFactory sessionFactory;

	public Boolean saveStudent(Student student) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(student);
		tx.commit();
		return tx.wasCommitted();
	}

	@SuppressWarnings("unchecked")
	public List<Student> studentList() {

		return sessionFactory.openSession().createCriteria(Student.class).list();
	}

	public Student studentGetId(Integer id) {

		return (Student) sessionFactory.openSession().get(Student.class, id);   
	}

	public Boolean studentDelete(Integer id) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		Student student = studentGetId(id);
		session.delete(student);
		tx.commit();
		return tx.wasCommitted();
	}

	@Override
	public Long studentCount() {
		Session session = sessionFactory.openSession();
		Query query = (Query) session.createQuery("Select count(*) from Student");
		Long studentCount = (Long) query.uniqueResult();
		//System.out.println("Student Couny:---------" + studentCount);
		return studentCount;
	}

	//// student list by course MCA
	@SuppressWarnings("unchecked")
	@Override
	public List<Student> viewListMca() {
		Session session = sessionFactory.openSession();
		Query query =  session.createQuery("from Student WHERE coursename LIKE 'MCA%'");
		@SuppressWarnings("rawtypes")
		List list = query.list(); 
		return list;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Student> viewListBe() {
		Session session = sessionFactory.openSession();
		Query query =  session.createQuery("from Student WHERE coursename LIKE 'B.E%'");
		@SuppressWarnings("rawtypes")
		List list = query.list(); 
		return list;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Student> viewListMtech() {
		Session session = sessionFactory.openSession();
		Query query =  session.createQuery("from Student WHERE coursename LIKE 'M.TECH%'");
		@SuppressWarnings("rawtypes")
		List list = query.list(); 
		return list;
	}

	@Override
	public List<Student> viewListMsc() {
		Session session = sessionFactory.openSession();
		Query query =  session.createQuery("from Student WHERE coursename LIKE 'MSc Computer Science%'");
		@SuppressWarnings("rawtypes")
		List list = query.list(); 
		return list;
	}

}      
