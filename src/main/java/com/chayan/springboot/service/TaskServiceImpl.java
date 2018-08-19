package com.chayan.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chayan.springboot.model.Task;
import com.chayan.springboot.repositories.TaskRepository;



@Service("taskService")
@Transactional
public class TaskServiceImpl implements TaskService{

	@Autowired
	private TaskRepository taskRepository;

	public Task findById(Long id) {
		return taskRepository.findOne(id);
	}

	public Task findByName(String taskName) {
		return taskRepository.findByTaskName(taskName);
	}

	public void saveTask(Task task) {
		taskRepository.save(task);
	}

	public void updateTask(Task task){
		saveTask(task);
	}

	public void deleteTaskById(Long id){
		taskRepository.delete(id);
	}

	public void deleteAllTasks(){
		taskRepository.deleteAll();
	}

	public List<Task> findAllTasks(){
		return taskRepository.findAll();
	}

	public boolean isTaskExist(Task task) {
		return findByName(task.getTaskName()) != null;
	}

}
