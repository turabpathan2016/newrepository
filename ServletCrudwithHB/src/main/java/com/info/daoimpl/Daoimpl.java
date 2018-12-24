package com.info.daoimpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.info.dao.Idao;
import com.info.model.Student;
import com.info.utility.HibernateUtility;

public class Daoimpl implements Idao {
HibernateUtility hibernateUtility;
	public void addStudent(Student student) {
		SessionFactory factory=hibernateUtility.getSessionFactory();
		Session session=factory.openSession();
		
		System.out.println("inside daoimpl..........");
		Transaction transaction=session.beginTransaction();
session.save(student);
transaction.commit();
	}
	public boolean logincheck(String username,String password) {
		SessionFactory factory=hibernateUtility.getSessionFactory();
		Session session=factory.openSession();
		
		
		Query query=session.createQuery("select s.username,s.password from Student s where s.username='"+username+"' and s.password='"+password+"' ");
		Object obj=query.uniqueResult();
	
		
		if(obj!=null)
		{
			return true;
		}
		else {
	return false;

	}}
	public java.util.List<Student> getAllStudent() {
		SessionFactory factory=hibernateUtility.getSessionFactory();
		Session session=factory.openSession();
		Query query=session.createQuery("from Student");
	java.util.List<Student>	list=query.list();
		
		return list;
	}
	public boolean delete(int id) {
		SessionFactory factory=hibernateUtility.getSessionFactory();
		Session session=factory.openSession();
		Object obj=session.get(Student.class, id);
		Student student=(Student) obj;
		System.out.println("in daoimpl ...."+student.getRollno());
		session.delete(student);
		session.beginTransaction().commit();
		return true;
	}
	public List<Student> updateStudent(Student s) {
		SessionFactory factory=hibernateUtility.getSessionFactory();
		Session session=factory.openSession();
		//Object obj=session.get(Student.class, id);
		//Student student=(Student) obj;
		session.update(s);
		session.beginTransaction().commit();
		return getAllStudent();
	}
	public Student getStudent(int id) {
		SessionFactory factory=hibernateUtility.getSessionFactory();
		Session session=factory.openSession();
		Object obj=session.get(Student.class, id);
		Student student=(Student) obj;
		return student;
	}

}
