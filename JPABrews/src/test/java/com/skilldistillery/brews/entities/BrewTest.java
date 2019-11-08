package com.skilldistillery.brews.entities;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Before;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

public class BrewTest {
	private static EntityManagerFactory emf;
	private static EntityManager em;
	private Brew brew;

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("BrewsDB");
	}
	@AfterClass
	public static void tearDownAfterClass() throws Exception {
		emf.close();
	}
	

	@Before
	public void setUp() throws Exception {
		em = emf.createEntityManager();
		brew = em.find(Brew.class, 1);
	}

	@After
	public void tearDown() throws Exception {
		em.close();
		brew = null;
	}

	@Test
	@DisplayName("testing Brew entity mappings")
	void test1() {
		assertEquals("Nick" , brew.getName());
		
	}

}
