package com.test.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.dao.IWorkerDao;
import com.test.pojo.WorkInfo;
import com.test.service.IWorkerService;

@Service
public class WorkServiceImpl implements IWorkerService {
	@Autowired
	private IWorkerDao workerDao;
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
		System.out.println("执行到 Serviceimpl");
		return workerDao.WorkerLogin(workInfo);
	}

}
