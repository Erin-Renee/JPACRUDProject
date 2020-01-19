package com.skilldistillery.snacks.data;

import java.util.List;

import com.skilldistillery.snacks.entities.Snacks;

public interface SnacksDAO {

	Snacks findSnacksById(Integer id);

	List<Snacks> findAll();
	
	boolean delete(Integer id);
	
	Snacks create(Snacks snack);
	
	Snacks update(Integer id, Snacks snack);

}
