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

	@RequestMapping(path = "addBrewForm.do", method = RequestMethod.GET)
	public ModelAndView newFilmForm(@Valid Brew brew) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("createBrewForm");
		return mv;
	}

	@RequestMapping(path = "addBrew.do", params = "bid", method = RequestMethod.POST)
	public ModelAndView createBrew(@Valid Brew brew, Errors errors) {

		ModelAndView mv = new ModelAndView();
		Brew newBrew = brewDAO.create(brew);

		if (newBrew == null) {
			errors.rejectValue("name", "error.title", "Name must be 1 to 35 letters long");
		}
		mv.addObject("brew", newBrew);
		mv.setViewName("brew/createdBrew");
		return mv;
	}

	@RequestMapping(path = "getBrewFields.do", params = "bid", method = RequestMethod.GET)
	public ModelAndView getBrewFields(@RequestParam("bid") int bid) {
		ModelAndView mv = new ModelAndView();

		Brew foundBrew = brewDAO.findById(bid);
		mv.addObject("brew", foundBrew);
		mv.setViewName("brew/update");
		return mv;
	}

	@RequestMapping(path = "saveBrewFields.do", params = "bid", method = RequestMethod.POST)
	public ModelAndView saveBrewields(@RequestParam("bid") int bid, @Valid Brew brew) {
		ModelAndView mv = new ModelAndView();

		Brew updatedBrew = brewDAO.update(bid, brew);
		brewDAO.findById(bid);
		mv.addObject("brew", updatedBrew);
		mv.setViewName("brew/show");
		return mv;
	}

	@RequestMapping(path = "deleteBrew.do", params = "bid", method = RequestMethod.POST)
	public ModelAndView deleteBrew(@RequestParam("bid") int bid) {

		brewDAO.destroy(bid);
		ModelAndView mv = new ModelAndView();
		Brew foundBrew = brewDAO.findById(bid);
		mv.addObject("brew", foundBrew);
		mv.setViewName("brew/delete");
		return mv;
	}

}
