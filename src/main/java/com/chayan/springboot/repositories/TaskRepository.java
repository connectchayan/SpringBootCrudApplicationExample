package com.chayan.springboot.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.chayan.springboot.model.Task;

@Repository
public interface TaskRepository extends JpaRepository<Task, Long> {

    Task findByTaskName(String taskName);
    
   

}
