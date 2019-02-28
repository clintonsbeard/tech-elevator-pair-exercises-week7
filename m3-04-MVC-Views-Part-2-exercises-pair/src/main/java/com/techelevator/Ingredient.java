package com.techelevator;

public class Ingredient {

	private String quantity;
	private String name;

	public String getQuantity() {
		return quantity;
	}

	public String getName() {
		return name;
	}

	public Ingredient(String quantity, String ingredientName) {
		this.quantity = quantity;
		this.name = ingredientName;
	}
}
