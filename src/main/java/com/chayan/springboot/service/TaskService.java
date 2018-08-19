package com.chayan.springboot.service;


import java.util.List;

import com.chayan.springboot.model.Task;

public interface TaskService {
	
	Task findById(Long id);

	Task findByName(String name);

	void saveTask(Task task);

	void updateTask(Task task);

	void deleteTaskById(Long id);

	void deleteAllTasks();

	List<Task> findAllTasks();

	boolean isTaskExist(Task task);
}