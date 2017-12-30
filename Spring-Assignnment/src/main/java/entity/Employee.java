package entity;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;


@Entity
public class Employee implements Serializable {
	

	private int id;

	@Id
	@GeneratedValue
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public int getManager_id() {
		return manager_id;
	}

	public void setManager_id(int manager_id) {
		this.manager_id = manager_id;
	}

	@ManyToOne(optional=true,fetch=javax.persistence.FetchType.EAGER,cascade={javax.persistence.CascadeType.MERGE,javax.persistence.CascadeType.PERSIST})
	public Compensation getCompensation() {
		return compensation;
	}

	public void setCompensation(Compensation compensation) {
		this.compensation = compensation;
	}

	@OneToOne(optional=true,cascade={javax.persistence.CascadeType.PERSIST,javax.persistence.CascadeType.MERGE} ,fetch=javax.persistence.FetchType.EAGER)
	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	@OneToOne(cascade={javax.persistence.CascadeType.PERSIST,javax.persistence.CascadeType.MERGE} ,fetch=javax.persistence.FetchType.EAGER)
	public Degree getDegree() {
		return degree;
	}

	public void setDegree(Degree degree) {
		this.degree = degree;
	}

	private String department;
	
	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	private String fname;

	private String lname;

	private String mname;

	private int manager_id;

	private Compensation compensation;

	private Address address;

	private Degree degree;



}
