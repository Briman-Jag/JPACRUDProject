package com.skilldistillery.brews.data;

import java.util.List;

import com.skilldistillery.brews.entities.Brew;

public interface BrewDAO{
	
	public Brew create(Brew brew);
	public Brew findById(int id);
	public Brew findByName(String bname);
	public List<Brew> findAll();
	public Brew update(int id, Brew brew);
	public boolean destroy(int id);
	

}
