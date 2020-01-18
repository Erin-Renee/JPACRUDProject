package com.skilldistillery.snacks.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.snacks.data.SnacksDAO;
import com.skilldistillery.snacks.entities.Snacks;

@Controller
public class SnacksController {
	@Autowired
	private SnacksDAO dao;

	@RequestMapping("/")
	public String index() {

		return "index";
	}

	@RequestMapping(path = "getSnacks.do", method = RequestMethod.GET)
	public String showSnack(@RequestParam Integer id, Model model) {

		Snacks snacks = dao.findSnacksById(id);
		model.addAttribute("snacks", snacks);
		return "show";

	}
}
