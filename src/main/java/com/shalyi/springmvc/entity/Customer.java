package com.shalyi.springmvc.entity;

import javax.persistence.Column;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "customer")

public class Customer {
	 @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    @Column(name = "id")
	    private int id;

	    @Column(name = "name")
	    private String name;

	    @Column(name = "ceo")
	    private String ceo;

	    @Column(name = "email")
	    private String email;
	    
	    @Column(name = "nrc")
	    private String nrc;
	    
	    @Column(name = "phNo")
	    private String phNo;
	    
	    @Column(name = "job")
	    private String job;
	    
	    @Column(name = "city")
	    private String city;
	    
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



		public String getCeo() {
			return ceo;
		}



		public void setCeo(String ceo) {
			this.ceo = ceo;
		}



		public String getEmail() {
			return email;
		}



		public void setEmail(String email) {
			this.email = email;
		}



		public String getNrc() {
			return nrc;
		}



		public void setNrc(String nrc) {
			this.nrc = nrc;
		}



		public String getPhNo() {
			return phNo;
		}



		public void setPhNo(String phNo) {
			this.phNo = phNo;
		}



		public String getJob() {
			return job;
		}



		public void setJob(String job) {
			this.job = job;
		}



		public String getCity() {
			return city;
		}



		public void setCity(String city) {
			this.city = city;
		}



		public String getDept() {
			return dept;
		}



		public void setDept(String dept) {
			this.dept = dept;
		}



		@Column(name = "dept")
	    private String dept;

	    public Customer() {

	    }

	    @Override
	    public String toString() {
	        return "Customer [id=" + id + ", name=" + name + ", CEO=" + ceo + ", email=" + email + "]";
	    }
}
