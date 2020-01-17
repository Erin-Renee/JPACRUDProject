package com.skilldistillery.snacks.entities;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class SnacksTest {
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Snacks snacks;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("SnackPU");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf = null;
	}

	@BeforeEach
	void setUp() throws Exception {
	em = emf.createEntityManager();
	snacks = em.find(Snacks.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		snacks = null;
		em = null;
	}

	@Test
	void test() {
		fail("Not yet implemented");
	}

}
