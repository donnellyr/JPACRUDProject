package com.skilldistillery.nflteams.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.nflteams.entities.NFLteam;

@Service
@Transactional
public class NFLTeamDAOImpl implements NFLTeamDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public NFLteam findById(int teamid) {
		NFLteam team = em.find(NFLteam.class, teamid);
		System.out.println(team);
		return team;
	}

	@Override
	public List<NFLteam> findAll() {
		String sql = ("SELECT t FROM NFLteam t");
		List<NFLteam> teams = em.createQuery(sql, NFLteam.class).getResultList();
		System.out.println(teams);
		return teams;

	}

	@Override
	public boolean addTeam(NFLteam team) {

		em.persist(team);

		em.flush();

		return true;
	}

	@Override
	public boolean deleteTeam(int id) {
		NFLteam team = em.find(NFLteam.class, id);
		System.out.println("predel *****" + team);
		em.remove(team);		
		System.out.println("postdel *****" + team);
  		return false;
	}

}
