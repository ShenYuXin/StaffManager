package com.test.mybatis;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.alibaba.fastjson.JSON;
import com.test.pojo.Student;
import com.test.service.IStudentService;

@RunWith(SpringJUnit4ClassRunner.class)	
@ContextConfiguration(locations = {"classpath:spring/spring-mybatis.xml"})
public class TestMybatis {
	

	@Test
	public void TestSelect() {
	//	Student stu = service.getStudentById(1);
	//	System.out.println(JSON.toJSONString(stu));
	}
}
