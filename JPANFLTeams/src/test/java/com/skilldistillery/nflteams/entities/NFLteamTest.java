package com.skilldistillery.nflteams.entities;

import static org.junit.jupiter.api.Assertions.assertNotNull;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class NFLteamTest {
private static EntityManagerFactory emf;
private EntityManager em;
private NFLteam team; 
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPANFLTeams");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		team = em.find(NFLteam.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		team = null;
	}

	@Test
	void test() {
		assertNotNull(team);
	}

}
