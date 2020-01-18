package com.skilldistillery.snacks.data;

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
	
	
	@Override
	public Snacks findSnacksById(int id) {
		return em.find(Snacks.class, id);
	}
	
	
	
}
