package com.skilldistillery.nflteams.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class NFLTeam {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String abbreviation;
	
	
	public NFLTeam() {
		super();
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getAbbreviation() {
		return abbreviation;
	}


	public void setAbbreviation(String abbreviation) {
		this.abbreviation = abbreviation;
	}


	@Override
	public String toString() {
		return "NflTeam [id=" + id + ", abbreviation=" + abbreviation + "]";
	}


}
