package com.chayan.springboot;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Import;

import com.chayan.springboot.configuration.JpaConfiguration;


@Import(JpaConfiguration.class)
@SpringBootApplication(scanBasePackages={"com.chayan.springboot"})// same as @Configuration @EnableAutoConfiguration @ComponentScan
public class TaskManagerApp {

	public static void main(String[] args) {
		SpringApplication.run(TaskManagerApp.class, args);
	}
}
