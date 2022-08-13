package com.skilldistillery.nflteams.data;

import java.util.List;

import org.springframework.ui.Model;

import com.skilldistillery.nflteams.entities.NFLteam;

public interface NFLTeamDAO {
NFLteam findById(int teamid);
public List<NFLteam> findAll();
 boolean addTeam(NFLteam team);
 boolean deleteTeam(int id);
 boolean editTeam(int id, String abbreviation, String name, String city, String division, String conference, int sbWins);


}
