package com.skilldistillery.brews;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@SpringBootApplication
@EntityScan("com.skilldistillery.brews")
public class BriansBrewsApplication {

	public static void main(String[] args) {
		SpringApplication.run(BriansBrewsApplication.class, args);
	}

}
