package com.skilldistillery.brews.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
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

	@RequestMapping(path = "/")
	public String index() {
		return "index";
	}

	@RequestMapping(path = "getBrew.do", method = RequestMethod.GET)
	public ModelAndView getBrew(@RequestParam("bid") int bid) {
		ModelAndView mv = new ModelAndView();

		Brew brew = brewDAO.findById(bid);

		mv.addObject("brew", brew);
		mv.setViewName("brew/show");
		return mv;
	}

	@RequestMapping(path = "getBrewByName.do", method = RequestMethod.GET)
	public ModelAndView getBrewByTitle(@RequestParam("bname") String bname) {
		ModelAndView mv = new ModelAndView();

		List<Brew> foundBrew = brewDAO.findByName(bname);

		mv.addObject("bname", foundBrew);
		mv.setViewName("brew/showByName");
		return mv;
	}

	@RequestMapping(path = "getAllBrews.do", method = RequestMethod.GET)
	public String getAllBrews(Model model) {
		List<Brew> allBrews = brewDAO.findAll();
		model.addAttribute("allBrews", allBrews);

		return "brew/showall";
	}

	@RequestMapping(path = "addBrew.do", params = "bid", method = RequestMethod.POST)
	public ModelAndView createBrew(@Valid Brew brew, Errors errors) {

		ModelAndView mv = new ModelAndView();
		Brew newBrew = brewDAO.create(brew);

		if (newBrew == null) {
			errors.rejectValue("name", "error.title", "Name must be 1 to 35 letters long");
		}
		mv.addObject("brew", newBrew);
		mv.setViewName("create");
		return mv;
	}

	@RequestMapping(path = "saveFilmFields.do", params = "brewID", method = RequestMethod.POST)
	public ModelAndView saveFilmFields(@RequestParam("brewID") int brewID, @Valid Brew brew) {
		ModelAndView mv = new ModelAndView();

		Brew updatedBrew = brewDAO.update(brewID, brew);
		Brew display = brewDAO.findById(brewID);
		mv.addObject("brew", updatedBrew);
		mv.setViewName("update");
		return mv;
	}

	@RequestMapping(path = "deleteBrew.do", params = "bid", method = RequestMethod.POST)
	public ModelAndView deleteBrew(@RequestParam("bid") int bid) {

		boolean delete = brewDAO.destroy(bid);

		ModelAndView mv = new ModelAndView();
		Brew foundBrew = brewDAO.findById(bid);
		mv.addObject("brew", foundBrew);
		mv.setViewName("delete");
		return mv;
	}

}
