package com.info.dao;

import java.util.List;

import com.info.model.Student;

public interface Idao {
public void addStudent(Student student);
public boolean logincheck(String usename,String password);
public List<Student> getAllStudent();
public boolean delete(int id);
public List<Student> updateStudent(Student id );
public Student getStudent(int id);
}
