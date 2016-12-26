package com.test.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.dao.IStudentDao;
import com.test.pojo.Student;
import com.test.pojo.WorkInfo;
import com.test.service.IStudentService;


public class StudentServiceImpl implements IStudentService {
	@Autowired
	private IStudentDao dao;
	public Student getStudentById(Student stu) {
		// TODO Auto-generated method stub
		return this.dao.getStudentById(stu);
	}

	public int delStudentById(String id) {
		// TODO Auto-generated method stub
		Map<String,String> map = new HashMap<String, String>();
		map.put("id", id);
		return this.dao.delStudentById(map);
	}

	public void addStudent(Student stu) {
		// TODO Auto-generated method stub
		
		this.dao.addStudent(stu);
	}

	public int updateStudentByName(Student stu) {
		// TODO Auto-generated method stub
		return dao.updateStudentByName(stu);
	}

	public List<Student> selectStudent() {
		// TODO Auto-generated method stub
		return dao.selectStudent();
	}

	public int updateName(String oldname, String newname) {
		// TODO Auto-generated method stub
		Map<String,String> map = new HashMap<String,String>();
		map.put("oldname", oldname);
		map.put("newname", newname);
		return dao.updataName(map);
	}

	public List<Student> selectByAge(Student stu) {
		// TODO Auto-generated method stub
		
		return dao.selectByAge(stu);
	}

	public String CheckId(WorkInfo workinfo) {
		
		return null;
	}

}
