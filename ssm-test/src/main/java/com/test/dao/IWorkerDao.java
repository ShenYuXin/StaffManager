package com.test.dao;

import com.test.pojo.WorkInfo;

public interface IWorkerDao {
	public String AddWorker();
	public String DeleteWorker();
	public String UpdateWorker();
	public String WorkerLogin(WorkInfo workInfo);
}
