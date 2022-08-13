package com.skilldistillery.nflteams.data;

import java.util.List;

import com.skilldistillery.nflteams.entities.NFLteam;

public interface NFLTeamDAO {
NFLteam findById(int teamid);
public List<NFLteam> findAll();
 boolean addTeam(NFLteam team);
 boolean deleteTeam(int id);


}
