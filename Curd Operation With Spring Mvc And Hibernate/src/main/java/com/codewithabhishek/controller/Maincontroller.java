package com.codewithabhishek.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.bind.annotation.RequestMethod;

import com.codewithabhishek.dao.InfoDao;
import com.codewithabhishek.model.InfoModel;
import com.codewithabhishek.service.InfoService;

@Controller
public class Maincontroller {

	@Autowired
	private InfoService infoservice;



	@RequestMapping("/addin")
	public String showform(Model m) {
		m.addAttribute("command", new InfoModel());
		return "addinfo";
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String save(@ModelAttribute("infomodel") InfoModel infomodel) {
		infoservice.addInfo(infomodel);
		return "redirect:/viewinfo";// will redirect to viewemp request mapping
	}

	@RequestMapping("/viewinfo")
	public String viewinfo(Model m) {

		List<InfoModel> viewinfo = infoservice.infolist();
		m.addAttribute("viewinfo", viewinfo);

		return "viewinfo";// will redirect to viewemp request mapping
	}

}
