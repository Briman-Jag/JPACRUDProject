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
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBreweryName() {
		return breweryName;
	}
	public void setBreweryName(String breweryName) {
		this.breweryName = breweryName;
	}
	public String getBreweryLocation() {
		return breweryLocation;
	}
	public void setBreweryLocation(String breweryLocation) {
		this.breweryLocation = breweryLocation;
	}
	public String getStyle() {
		return style;
	}
	public void setStyle(String style) {
		this.style = style;
	}
	public double getAbv() {
		return abv;
	}
	public void setAbv(double abv) {
		this.abv = abv;
	}
	public int getIbu() {
		return ibu;
	}
	public void setIbu(int ibu) {
		this.ibu = ibu;
	}
	public double getMyRating() {
		return myRating;
	}
	public void setMyRating(double myRating) {
		this.myRating = myRating;
	}
	public Date getDateRated() {
		return dateRated;
	}
	public void setDateRated(Date dateRated) {
		this.dateRated = dateRated;
	}
	private int ibu;
	private double myRating;
	private Date dateRated;
	

}
