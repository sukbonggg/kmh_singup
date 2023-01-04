package com.kmh.exam.demo.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

public class Test {
	  @RequestMapping("test")
	    public String test(Model model) {
	        Post post1 = new Post(1, "lee", "book1");
	        Post post2 = new Post(2, "choi", "book2");
	        Post post3 = new Post(3, "kim", "book3");
	        List<Post> list = new ArrayList<>();
	        list.add(post1);
	        list.add(post2);
	        list.add(post3);
	        model.addAttribute("list", list);
	        return "test";
	    }
}
