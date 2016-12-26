package com.test.dao.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.test.dao.IWorkerDao;
import com.test.mapper.WorkMapper;
import com.test.pojo.WorkInfo;

@Repository
public class WorkerDaoImpl implements IWorkerDao {
	
	@Autowired
	private WorkMapper mapper;
	public String AddWorker() {
		// TODO Auto-generated method stub
		return null;
	}

	public String DeleteWorker() {
		// TODO Auto-generated method stub
		return null;
	}

	public String UpdateWorker() {
		// TODO Auto-generated method stub
		return null;
	}

	public String WorkerLogin(WorkInfo workInfo) {
		// TODO Auto-generated method stub
		if(null == workInfo){
			return "fail";
		}
		String password = mapper.WorkerLogin(workInfo.getWorkId());
		System.out.println("执行到 Dao"+workInfo.getWorkId());
		return password;
	}

}
