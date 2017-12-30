package entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Degree {
	
private int id;

@Id
@GeneratedValue
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

public String getYear() {
	return year;
}

public void setYear(String year) {
	this.year = year;
}

public String getInstitution() {
	return institution;
}

public void setInstitution(String institution) {
	this.institution = institution;
}

public String getGpa() {
	return gpa;
}

public void setGpa(String gpa) {
	this.gpa = gpa;
}

private String name;

private String year;

private String institution;

private String gpa;



}
