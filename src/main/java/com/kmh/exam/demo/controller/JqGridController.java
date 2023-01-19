package com.kmh.exam.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class JqGridController {

	@RequestMapping("/usr/home/jqGrid")
	public String showjqGrid() {
		return "usr/home/jqGrid";
	}

}
