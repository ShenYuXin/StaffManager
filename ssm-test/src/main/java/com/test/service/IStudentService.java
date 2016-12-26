package com.test.service;

import java.util.List;

import com.test.pojo.Student;
import com.test.pojo.WorkInfo;

public interface IStudentService {
	public Student getStudentById(Student stu);
	public int delStudentById(String id);
	public void addStudent(Student stu);
	public int updateStudentByName(Student stu);
	public List<Student> selectStudent();
	public int updateName(String oldname,String newname);
	public List<Student> selectByAge(Student stu);
	public String CheckId(WorkInfo workinfo);
}
