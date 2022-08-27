package springmvcsearch;

public class Address {
	private String Street;
	private String city;
	
	
	public String getStreet() {
		return Street;
	}
	public String getCity() {
		return city;
	}
	public void setStreet(String street) {
		Street = street;
	}
	public void setCity(String city) {
		this.city = city;
	}
	
	
	@Override
	public String toString() {
		return "Address [Street=" + Street + ", city=" + city + "]";
	}
	

}
