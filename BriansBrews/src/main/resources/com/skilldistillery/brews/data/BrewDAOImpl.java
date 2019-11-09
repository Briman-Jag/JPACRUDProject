package com.skilldistillery.brews.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.brews.entities.Brew;

@Transactional
@Service
public class BrewDAOImpl implements BrewDAO {

	@PersistenceContext
	private static EntityManager em;

	@Override
	public Brew create(Brew brew) {

		return brew;
	}

	@Override
	public Brew findById(int id) {

		return em.find(Brew.class, id);
	}

	@Override
	public List<Brew> findAll() {
		String sql = "SELECT b FROM Brew b";
		List<Brew> allBrews = em.createQuery(sql, Brew.class).getResultList();
		return allBrews;
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
