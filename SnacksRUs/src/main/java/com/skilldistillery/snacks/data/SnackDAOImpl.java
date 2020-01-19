package com.skilldistillery.snacks.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.snacks.entities.Snacks;

@Service
@Transactional
public class SnackDAOImpl implements SnacksDAO {

	@PersistenceContext
	private EntityManager em;
	
	public List<Snacks> findAll() {
		String jpql = "SELECT snacks FROM Snacks snacks";
		List<Snacks> snacks = em.createQuery(jpql, Snacks.class).getResultList();
		
		return snacks;
	}
	

	@Override
	public Snacks findSnacksById(Integer id) {
		return em.find(Snacks.class, id);
	}

	@Override
	public Snacks create(Snacks snack) {
		em.persist(snack);
		em.flush();
		return snack;
	}

	@Override
	public Snacks update(Integer id, Snacks snack) {

		Snacks snackToBeUpdated = em.find(Snacks.class, id);
		snackToBeUpdated.setName(snack.getName());
		snackToBeUpdated.setDescription(snack.getDescription());
		snackToBeUpdated.setCategory(snack.getCategory());
		snackToBeUpdated.setCalories(snack.getCalories());
		snackToBeUpdated.setSodium(snack.getSodium());
		snackToBeUpdated.setFats(snack.getFats());
		snackToBeUpdated.setSugars(snack.getSugars());
		snackToBeUpdated.setVegan(snack.getVegan());
		snackToBeUpdated.setContainsNuts(snack.getContainsNuts());
		em.flush();
		return snackToBeUpdated;

	}
	
	public boolean delete(Integer id) {
		
		Snacks snack = em.find(Snacks.class, id);
		em.remove(snack);
		boolean status = !em.contains(snack);
		return status;
		
	}

}
