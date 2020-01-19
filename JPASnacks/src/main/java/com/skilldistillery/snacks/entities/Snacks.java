package com.skilldistillery.snacks.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Snacks {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private String description;
	private String category;
	private int calories;
	private int sodium;
	private int fats;
	private int sugars;
	private int vegan;
	@Column(name = "contains_nuts")
	private int containsNuts;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	public Snacks() {
		super();
	}
	

	public Snacks(int id, String name, String description, String category, int calories, int sodium, int fats,
			int sugars, int vegan, int containsNuts) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
		this.category = category;
		this.calories = calories;
		this.sodium = sodium;
		this.fats = fats;
		this.sugars = sugars;
		this.vegan = vegan;
		this.containsNuts = containsNuts;
	}
	

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public int getCalories() {
		return calories;
	}

	public void setCalories(int calories) {
		this.calories = calories;
	}

	public int getSodium() {
		return sodium;
	}

	public void setSodium(int sodium) {
		this.sodium = sodium;
	}

	public int getFats() {
		return fats;
	}

	public void setFats(int fats) {
		this.fats = fats;
	}

	public int getVegan() {
		return vegan;
	}

	public void setVegan(int vegan) {
		this.vegan = vegan;
	}

	public int getContainsNuts() {
		return containsNuts;
	}

	public void setContainsNuts(int containsNuts) {
		this.containsNuts = containsNuts;
	}

	@Override
	public String toString() {
		return "Snacks [id=" + id + ", name=" + name + ", description=" + description + ", category=" + category
				+ ", calories=" + calories + ", sodium=" + sodium + ", fats=" + fats + ", sugars=" + sugars + ", vegan="
				+ vegan + ", containsNuts=" + containsNuts + "]";
	}

	public int getSugars() {
		return sugars;
	}

	public void setSugars(int sugars) {
		this.sugars = sugars;
	}

	

}
