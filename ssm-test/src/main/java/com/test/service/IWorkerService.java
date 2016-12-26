package com.test.service;

import com.test.pojo.WorkInfo;

public interface IWorkerService {
	public String AddWorker();
	public String DeleteWorker();
	public String UpdateWorker();
	public String WorkerLogin(WorkInfo workInfo);
}
