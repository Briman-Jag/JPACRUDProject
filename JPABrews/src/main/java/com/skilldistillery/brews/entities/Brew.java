package com.skilldistillery.brews.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Brew {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	public int getId() {
		return id;
	}

	@Column(name = "beer_name")
	private String name;
	
	@Column(name = "brewery_name")
	private String breweryName;
	
	@Column(name = "brewery_location")
	private String breweryLocation;
	
	private String style;
	
	@Column(name = "alcohol_by_volume")
	private double abv;
	
	@Column(name = "international_bitterness_units")
	private int ibu;
	
	@Column(name = "my_rating")
	private double myRating;
	
	public Brew() {
		super();
	}
	
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
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		long temp;
		temp = Double.doubleToLongBits(abv);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		result = prime * result + ((breweryLocation == null) ? 0 : breweryLocation.hashCode());
		result = prime * result + ((breweryName == null) ? 0 : breweryName.hashCode());
		result = prime * result + ibu;
		result = prime * result + id;
		temp = Double.doubleToLongBits(myRating);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + ((style == null) ? 0 : style.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Brew other = (Brew) obj;
		if (Double.doubleToLongBits(abv) != Double.doubleToLongBits(other.abv))
			return false;
		if (breweryLocation == null) {
			if (other.breweryLocation != null)
				return false;
		} else if (!breweryLocation.equals(other.breweryLocation))
			return false;
		if (breweryName == null) {
			if (other.breweryName != null)
				return false;
		} else if (!breweryName.equals(other.breweryName))
			return false;
		if (ibu != other.ibu)
			return false;
		if (id != other.id)
			return false;
		if (Double.doubleToLongBits(myRating) != Double.doubleToLongBits(other.myRating))
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (style == null) {
			if (other.style != null)
				return false;
		} else if (!style.equals(other.style))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Brew [id=" + id + ", name=" + name + ", breweryName=" + breweryName + ", breweryLocation="
				+ breweryLocation + ", style=" + style + ", abv=" + abv + ", ibu=" + ibu + ", myRating=" + myRating
				+ "]";
	}

	

}
