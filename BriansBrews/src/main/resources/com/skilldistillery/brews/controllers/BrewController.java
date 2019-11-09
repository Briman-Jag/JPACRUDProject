package com.skilldistillery.brews.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.brews.data.BrewDAO;
import com.skilldistillery.brews.entities.Brew;

@Controller
public class BrewController {
	
	@Autowired
	private BrewDAO brewDAO;
	
	@RequestMapping(path="/", method = RequestMethod.GET)
	public String index(Model model) {
	  List<Brew> allBrews = brewDAO.findAll();
	  model.addAttribute("allBrews", allBrews);
	  
	  return "index";
	}

	@RequestMapping(path = "getBrew.do", method = RequestMethod.GET)
	public ModelAndView getFilm(@RequestParam("bid") int bid) {
		ModelAndView mv = new ModelAndView();

		Brew brew = brewDAO.findById(bid);

		mv.addObject("brew", brew);
		mv.setViewName("brew/show");
		return mv;
	}

}
