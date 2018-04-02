package com.example.backend;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class DemoApplication {

	public static void main(String[] args) {
//		System.out.println(BCrypt.gensalt());
		SpringApplication.run(DemoApplication.class, args);
	}
}


