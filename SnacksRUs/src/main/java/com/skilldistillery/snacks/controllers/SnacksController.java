package com.skilldistillery.snacks.controllers;

import java.util.ArrayList;
import java.util.List;

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
	public String index(Model model) {
		List<Snacks> snacks = new ArrayList<>();
		snacks = dao.findAll();
		model.addAttribute("snacks", snacks);
		
		return "index";
	}
	
	//@RequestMapping(path = "get")

	@RequestMapping(path = "getSnacksById.do", method = RequestMethod.GET)
	public String showSnack(@RequestParam Integer id, Model model) {

		Snacks snack = dao.findSnacksById(id);
		model.addAttribute("snack", snack);
		return "show";
	}
		
		@RequestMapping(path = "create.do", method = RequestMethod.GET)
		public String createSnack() {
			return "create";
		}
		@RequestMapping(path = "create.do", method = RequestMethod.POST)
		public String postSnack(Model model, Snacks snack) {
			snack = dao.create(snack);
			model.addAttribute("snack", snack);
			return "create";
		}
		@RequestMapping(path = "delete.do", method = RequestMethod.GET)
		public String deleteSnack(@RequestParam("snackId") int id) {
			dao.delete(id);
			return "index";
		}

}
