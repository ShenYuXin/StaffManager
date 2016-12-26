package com.test.dao;

import java.util.List;
import java.util.Map;

import com.test.pojo.Student;

public interface IStudentDao {
	Student getStudentById(Student stu);
	int delStudentById(Map map);
	void addStudent(Student stu);
	int updateStudentByName(Student stu);
	List<Student> selectStudent();
	int updataName(Map map);
	List<Student> selectByAge(Student stu);
}
