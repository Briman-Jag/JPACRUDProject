package com.skilldistillery.brews.entities;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Brew {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String name;
	private String breweryName;
	private String breweryLocation;
	private String style;
	
	private double abv;
	
	private int ibu;
	private double myRating;
	private Date dateRated;
	

}
