package com.ragnax.vijnanaragnaxeureka;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

@EnableEurekaServer
@SpringBootApplication
public class VijnanaRagnaxEurekaApplication {

	public static void main(String[] args) {
		SpringApplication.run(VijnanaRagnaxEurekaApplication.class, args);
	}

}
