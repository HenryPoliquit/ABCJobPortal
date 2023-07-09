package helper;

import java.util.List;

import com.abcjobs.model.Educations;
import com.abcjobs.model.Experiences;

public class Profile {
	private Long id;
	private String firstName;
	private String lastName;
	private String fullName;
	private String title;
	private String city;
	private String country;
	private String about;
	private String company;
	private String email;
	private String website;
	
	private List<Experiences> ex;
	private List<Educations> ed;
	public Profile(Long id, String firstName, String lastName, String fullName, String title, String country, String about,
			String company, String email, String website, List<Experiences> ex, List<Educations> ed, String city) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.fullName = fullName;
		this.title = title;
		this.city = city;
		this.country = country;
		this.about = about;
		this.company = company;
		this.email = email;
		this.website = website;
		this.ex = ex;
		this.ed = ed;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAbout() {
		return about;
	}
	public void setAbout(String about) {
		this.about = about;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getWebsite() {
		return website;
	}
	public void setWebsite(String website) {
		this.website = website;
	}
	public List<Experiences> getEx() {
		return ex;
	}
	public void setEx(List<Experiences> ex) {
		this.ex = ex;
	}
	public List<Educations> getEd() {
		return ed;
	}
	public void setEd(List<Educations> ed) {
		this.ed = ed;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
}
