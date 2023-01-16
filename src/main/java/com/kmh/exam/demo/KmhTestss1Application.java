package com.kmh.exam.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;


@SpringBootApplication
public class KmhTestss1Application extends SpringBootServletInitializer {

	public static void main(String[] args) {
		SpringApplication.run(KmhTestss1Application.class, args);
	}
	 @Override
	  protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
	    return builder.sources(KmhTestss1Application.class);
	  }

}


