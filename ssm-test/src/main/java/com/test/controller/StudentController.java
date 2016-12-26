package com.test.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.test.pojo.Student;
import com.test.pojo.WorkInfo;
import com.test.service.IStudentService;
import com.test.service.IWorkerService;

@Controller
public class StudentController {
	
	private IStudentService studetService;
	@Autowired
	private IWorkerService workerService;
	
	@RequestMapping("/stu")
	public String Student(HttpServletRequest request){
		return"Login";
	}
	
	@ResponseBody
	@RequestMapping("/check/worker")
	public String Check(HttpServletRequest request){
		String username = request.getParameter("username");
		String pwd = request.getParameter("pwd");
		WorkInfo work = new WorkInfo();
		work.setWorkId(username);
		work.setPwd(pwd);
		String getPwd = workerService.WorkerLogin(work);
		if(pwd.equals(getPwd)){
			return "success";
		}else{
			return "fail";
		}
	}
	
	@RequestMapping("/del")
	public String Del(HttpServletRequest request,String name){
		String id = request.getParameter("id");
		//System.out.println("获取到的id:"+id+"name:"+name);
		studetService.delStudentById(id);
		return "student";
	}
	
	@RequestMapping("/mod")
	public String Mod(HttpServletRequest request,HttpServletResponse response) throws IOException{
		int id =Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		int cou =Integer.parseInt(request.getParameter("cou"));
		Student stu = new Student();
		stu.setStudentId(id);
		stu.setName(name);
		stu.setAge(age);
		stu.setCourseId(cou);
		
		studetService.updateStudentByName(stu);
		Student student = studetService.getStudentById(stu);
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text;charset=UTF-8");
		PrintWriter writer = response.getWriter();
		writer.write(JSON.toJSONString(student));
		writer.flush();
		writer.close();
		return "student";
	}
	
	@RequestMapping("/select")
	public void Select(HttpServletRequest request,HttpServletResponse response) throws IOException{
		
		List<Student> list = studetService.selectStudent();
		  
		//response.setCharacterEncoding("UTF-8");
		//response.setContentType("text/html;charset=utf-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text;charset=UTF-8");
		PrintWriter writer = response.getWriter();
		writer.write(JSON.toJSONString(list));
		writer.flush();
		writer.close();
	}
	
	@RequestMapping("/mod2")
	public String Mod2(HttpServletRequest request){
		String oldname = request.getParameter("oldname");
		String newname = request.getParameter("newname");
		System.out.println(oldname+"---"+newname);
		studetService.updateName(oldname, newname);
		return"student";
	}
	
	@RequestMapping("/selectage")
	public void selectage(HttpServletRequest request,HttpServletResponse response) throws IOException{
		if(request.getParameter("age")!=""){
			int age = Integer.parseInt(request.getParameter("age"));
			Student stu = new Student();
			stu.setAge(age);
			System.out.println("age:"+age);
			List<Student> list = studetService.selectByAge(stu);
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text;charset=UTF-8");
			PrintWriter writer = response.getWriter();
			writer.write(JSON.toJSONString(list));
			writer.flush();
			writer.close();
		}
	}
	
}
