package com.test.mapper;

import com.test.pojo.WorkInfo;

public interface WorkMapper {
	public String AddWorker();
	public String DeleteWorker();
	public String UpdateWorker();
	public String WorkerLogin(String workId);
}
