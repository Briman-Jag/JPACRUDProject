package com.skilldistillery.brews.data;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.skilldistillery.brews.entities.Brew;

public class BrewDAOImpl implements BrewDAO{
	
	private static EntityManagerFactory emf = Persistence.createEntityManagerFactory("BrewsDB");
	private static EntityManager em;

	@Override
	public Brew create(Brew brew) {
		em = emf.createEntityManager();
		
		em.getTransaction().begin();

		return brew;
	}

	@Override
	public Brew readAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Brew update(int id, Brew brew) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean destroy(int id) {
		// TODO Auto-generated method stub
		return false;
	}
	

}
