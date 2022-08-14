package com.skilldistillery.nflteams.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="nfl_team")
public class NFLteam {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String abbreviation;
	
	private String name;
	
	private String city;
	
	private String division;
	
	private String conference;
	@Column(name="sb_wins")
	private Integer sbWins;
	
	private String logo;
	
	
	public NFLteam() {
		super();
	}


	public NFLteam(String abbreviation, String name, String city, String division, String conference,int sbWins, String logo) {
		this.abbreviation = abbreviation;
		this.name = name;
		this.city = city;
		this.division = division;
		this.conference = conference;
		this.sbWins =sbWins;
		this.logo = logo;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getCity() {
		return city;
	}


	public void setCity(String city) {
		this.city = city;
	}


	public String getDivision() {
		return division;
	}


	public void setDivision(String division) {
		this.division = division;
	}


	public String getConference() {
		return conference;
	}


	public void setConference(String conference) {
		this.conference = conference;
	}


	public int getSbWins() {
		return sbWins;
	}


	public void setSbWins(int sbWins) {
		this.sbWins = sbWins;
	}


	public String getLogo() {
		return logo;
	}


	public void setLogo(String logo) {
		this.logo = logo;
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
		return "NFLteam [id=" + id + ", abbreviation=" + abbreviation + ", name=" + name + ", city=" + city
				+ ", division=" + division + ", conference=" + conference + ", sbWins=" + sbWins + ", logo=" + logo
				+ "]";
	}


}
