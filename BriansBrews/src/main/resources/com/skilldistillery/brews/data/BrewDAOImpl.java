package com.skilldistillery.brews.data;

import java.sql.ResultSet;
import java.util.ArrayList;
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
	private EntityManager em;

	@Override
	public Brew create(Brew brew) {
		em.persist(brew);

		return brew;
	}

	@Override
	public Brew findById(int id) {

		return em.find(Brew.class, id);
	}

	@Override
	public List<Brew> findAll() {
		String jpql = "SELECT b FROM Brew b";
		List<Brew> allBrews = em.createQuery(jpql, Brew.class).getResultList();
		return allBrews;
	}

	@Override
	public Brew update(int id, Brew brew) {
		Brew updateBrew = em.find(Brew.class, id);

		updateBrew.setName(brew.getName());
		updateBrew.setBreweryName(brew.getBreweryName());
		updateBrew.setBreweryLocation(brew.getBreweryLocation());
		updateBrew.setStyle(brew.getStyle());
		updateBrew.setAbv(brew.getAbv());
		updateBrew.setIbu(brew.getIbu());
		updateBrew.setMyRating(brew.getMyRating());

		return updateBrew;
	}

	@Override
	public boolean destroy(int id) {
		boolean destroyed = true;
		Brew deleteBrew = em.find(Brew.class, id);
		if (deleteBrew != null) {
			em.remove(deleteBrew);
			destroyed = true;
		} else {

			destroyed = false;
		}
		return destroyed;
	}

	@Override
	public List<Brew> findByKeyword(String keyword) {
		String jpql = "SELECT b FROM Brew b WHERE b.name = :keyword";

		List<Brew> brews = new ArrayList<>();
		for (Brew brew : brews) {
			
			brew.add(em.createQuery(jpql, Brew.class).setParameter("keyword", "%" + keyword + "%").getResultList());
			
		}
		return brews;
	}

}
