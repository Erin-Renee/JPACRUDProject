package com.skilldistillery.snacks.data;

import com.skilldistillery.snacks.entities.Snacks;

public interface SnacksDAO {

	Snacks findSnacksById(int id);

}
