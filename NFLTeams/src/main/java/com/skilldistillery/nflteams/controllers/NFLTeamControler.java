package com.skilldistillery.nflteams.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.nflteams.data.NFLTeamDAO;
import com.skilldistillery.nflteams.entities.NFLteam;

@Controller
public class NFLTeamControler {
@Autowired
private NFLTeamDAO dao;
@RequestMapping(path= {"/","home.do"})
public String home(Model model) {
	model.addAttribute("teams",dao.findAll());
	return "index";
}
@RequestMapping(path="getTeam.do")
public String findById(int id, Model model) {
	model.addAttribute("team",dao.findById(id));
	return "view";
}
@RequestMapping(path="add.do")
public String addTeam(String abbreviation, String name, String city, String division, String conference, int sbWins,Model model) {
NFLteam newteam = new NFLteam(abbreviation,name,city,division,conference,sbWins);
try {
	System.out.println("*******"+newteam);
	dao.addTeam(newteam);
	model.addAttribute("teams",dao.findAll());
	model.addAttribute("teams",dao.findAll());
	return "index";
} catch (Exception e) {
	return "error";
}
}
@RequestMapping(path="delete.do")
public String deleteTeam(int id, Model model) {
	System.out.println(id);
	try {
		dao.deleteTeam(id);
		model.addAttribute("teams",dao.findAll());
		return "index";
	} catch (Exception e) {
		return "error";
	}
}
@RequestMapping(path="editView.do")
public String editView(int id, Model model) {
	try {
		model.addAttribute("team",dao.findById(id));
		System.out.println("editView*********" + id);
		return "edit";
	} catch (Exception e) {
		return "error";
	}

}
@RequestMapping(path="editTeam.do")
public String editTeam(int id, String abbreviation, String name, String city, String division, String conference, int sbWins,Model model) {
	System.out.println("editTeam*********" + id);
	try {
		dao.editTeam(id, abbreviation, name, city, division, conference, sbWins);
		model.addAttribute("team", dao.findById(id));
		return "view";
	} catch (Exception e) {
		return "error";
	}
	
}
}
