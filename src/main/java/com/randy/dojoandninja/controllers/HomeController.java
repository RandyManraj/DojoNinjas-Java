package com.randy.dojoandninja.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.randy.dojoandninja.models.Dojo;
import com.randy.dojoandninja.models.Ninja;
import com.randy.dojoandninja.services.DojoandNinjaService;


@Controller
public class HomeController {
	private DojoandNinjaService dojoninjaServ;
	
	public HomeController(DojoandNinjaService dojoninjaServ) {
		this.dojoninjaServ = dojoninjaServ;
	}
	
	@GetMapping("/")
	public String index(Model model) {
		model.addAttribute("allDojos", dojoninjaServ.getAllDojos());
		model.addAttribute("allNinjas", dojoninjaServ.getAllNinjas());
		return "index.jsp";
	}
	
	@RequestMapping("/dojo/new")
	public String createDojo(Model model) {
		model.addAttribute("aDojo", new Dojo());
		return "newdojo.jsp";
	}
	
	@RequestMapping("/ninja/new")
	public String createNinja(Model model) {
		model.addAttribute("aNinja", new Ninja());
		model.addAttribute("allDojos", dojoninjaServ.getAllDojos());

		return "newninja.jsp";
	}
	
	@PostMapping("/dojo/new")
	public String addDojo(@Valid @ModelAttribute("aDojo") Dojo aDojo, BindingResult result, Model model) {
		if(result.hasErrors()) {
			System.out.println(result.getAllErrors());
		}else {
			dojoninjaServ.create(aDojo);
		}
		return "redirect:/";
	}
	@PostMapping("/ninja/new")
	public String addNinja(@Valid @ModelAttribute("aNinja") Ninja aNinja, BindingResult result, Model model) {
		if(result.hasErrors()) {
			System.out.println(result.getAllErrors());
		}else {
			dojoninjaServ.create(aNinja);
		}
		return "redirect:/";
	}
	
//	@GetMapping("/dojos/{id}")
//	public String dojoLocation(Model model) {
//		System.out.println("Hello");
//		model.addAttribute("allDojos", dojoninjaServ.getOneLang(id));
//
//		return "locations.jsp";
//	}
	@RequestMapping(value = "/dojos/{id}")
	public String getOneDojo(@PathVariable("id")Long id, Model model) {
		Dojo DojoToShow = this.dojoninjaServ.getOneDojo(id);
		List<Ninja> allNinja=DojoToShow.getNinjas();
		model.addAttribute("allDojos", dojoninjaServ.getAllDojos());
		model.addAttribute("allNinjas", dojoninjaServ.getAllNinjas());
		model.addAttribute("DojoToShow", DojoToShow);
		System.out.println(DojoToShow + "Dojohere");
		return "locations.jsp";
	}
	

	
}
