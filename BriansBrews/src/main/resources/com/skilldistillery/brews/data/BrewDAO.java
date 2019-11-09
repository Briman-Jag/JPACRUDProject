package com.skilldistillery.brews.data;

import com.skilldistillery.brews.entities.Brew;

public interface BrewDAO{
	
	public Brew create(Brew brew);
	public Brew readAll();
	public Brew update(int id, Brew brew);
	public boolean destroy(int id);
	

}
