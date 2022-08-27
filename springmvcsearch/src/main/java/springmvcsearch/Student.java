package springmvcsearch;

import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
@Entity
public class Student {
	private String name;
	private Long id;
	private Date date;
	private List<String> courses;
	private String gender;
	private String type;
	
	private Address address;
	
	public String getName() {
		return name;
	}
	public Long getId() {
		return id;
	}
	public Date getDate() {
		return date;
	}
	public List<String> getCourses() {
		return courses;
	}
	public String getGender() {
		return gender;
	}
	public String getType() {
		return type;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public void setCourses(List<String> courses) {
		this.courses = courses;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public void setType(String type) {
		this.type = type;
	}
	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}
	@Override
	public String toString() {
		return "Student [name=" + name + ", id=" + id + ", date=" + date + ", courses=" + courses + ", gender=" + gender
				+ ", type=" + type + ", address=" + address + "]";
	}
	
	
	
	
	
	

}
