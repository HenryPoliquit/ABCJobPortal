package com.abcjobs.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.abcjobs.model.Educations;
import com.abcjobs.model.Experiences;
import com.abcjobs.model.UserDetails;
import com.abcjobs.service.EducationsService;
import com.abcjobs.service.ExperiencesService;
import com.abcjobs.service.UserDetailsService;
import com.abcjobs.service.UsersService;

import helper.Profile;

@Controller
public class AdminController {
	@Autowired
	UsersService us;
	
	@Autowired
	UserDetailsService ud;
	
	@Autowired
	EducationsService eds;
	
	@Autowired
	ExperiencesService exs;
	
	@RequestMapping(value="/admin") // admin page
	public ModelAndView index(Model model, HttpSession session) {
		String name = ud.getDetailsById(session.getAttribute("userId").toString()).split(",")[1];
		model.addAttribute("adminName", name);
		return new ModelAndView("admin/admin");
	}
	
	@RequestMapping(value="/all-users") // shows all users registered
	public ModelAndView allUsers(Model model, HttpSession session) {
		List<UserDetails> users = ud.getAllUserDetails();
		model.addAttribute("users", users);
		return new ModelAndView("admin/all-users");
	}
	
	@RequestMapping(value="/delete/{id}") // delete user
	public String deleteUserById(@PathVariable("id") Long id, Model model) {
		boolean isDeleted = us.deleteUserById(id);
		if(isDeleted) {
			model.addAttribute("err", "Cannot delete this user");
		}
		
		return "redirect:/all-users";
	}
	
	@RequestMapping(value="/view", method = RequestMethod.POST) // view user profile
	public ModelAndView viewProfile(@RequestParam("uId") String uId, Model model, HttpSession session) throws Exception {
		this.setModel(model, session, uId);
		return new ModelAndView("admin/view-user");  
	}
	
	private void setModel(Model model, HttpSession session, String uId) {
		String userId = String.valueOf(uId);
		String[] userDetails = ud.getDetailsById(userId).replaceAll("null", "-").split(",");
		String[] user = us.getEmailById(userId).replaceAll("null", "-").split(",");
		String udID = userDetails[0];
		
		model.addAttribute("uId", userDetails[0]);
		model.addAttribute("f", userDetails[1].charAt(0));
		model.addAttribute("l", userDetails[2].charAt(0));
		
		model.addAttribute("firstName", userDetails[1]);
		model.addAttribute("lastName", userDetails[2]);
		
		model.addAttribute("fullName", userDetails[1] + " " + userDetails[2]);
		model.addAttribute("title", userDetails[3]);
		model.addAttribute("city", userDetails[4]);
		model.addAttribute("country", userDetails[5]);
		model.addAttribute("about", userDetails[6]);
		model.addAttribute("company", userDetails[7]);
		model.addAttribute("email", user[0]);
		model.addAttribute("website", userDetails[8]);
		
		// experiences
		model.addAttribute("ex", exs.getExperiencesByUserDetailsId(udID)); // Experiences[]
		
		// educations
		model.addAttribute("ed", eds.getEducationsByUserDetailsId(udID)); // Educations[]
	}
	
	@RequestMapping(value="/edit-profile") // view user profile
	public ModelAndView editProfile(@RequestParam("uId") String uId, Model model, HttpSession session) throws Exception {
		this.setModel(model, session, uId);
		System.out.print(uId);
		return new ModelAndView("admin/user-profile");  
	}
	
	@RequestMapping(value="/edit-profile", method = RequestMethod.POST) // update profile POST
	public String update(
			@ModelAttribute("profile") UserDetails userDetails,
			@RequestParam("position") String position, @RequestParam("startDateEX") String startDateEX, 
			@RequestParam("endDateEX") String endDateEX, @RequestParam("companyNameEX") String companyNameEX, 
			@RequestParam("intitutionName") String intitutionName, @RequestParam("startDateED") String startDateED, 
			@RequestParam("endDateED") String endDateED, @RequestParam("educationName") String educationName, 
			Experiences experiences, Educations educations,
			Model model, HttpSession session, @RequestParam("uId") String uId) {
		
		Long userDetailsId = Long.parseLong(uId);
		ud.updateProfile(userDetailsId, userDetails);
		
		if(position.equals("") || startDateEX.equals("") || endDateEX.equals("") || companyNameEX.equals("")) {
			System.out.println("No experience added");
		} else {
			
			experiences.setPosition(position);
			experiences.setStartDate(startDateEX);
			experiences.setEndDate(endDateEX);
			experiences.setCompanyName(companyNameEX);
			experiences.setUserDetailsId(String.valueOf(userDetailsId));
			
			exs.addExperiences(experiences);
		}
		
		if(intitutionName.equals("") || startDateED.equals("") || endDateED.equals("") || educationName.equals("")) {
			System.out.println("No educational background added");
		} else {
			educations.setEducationName(educationName);
			educations.setStartDate(startDateED);
			educations.setEndDate(endDateED);
			educations.setIntitutionName(intitutionName);
			educations.setUserDetailsId(String.valueOf(userDetailsId));
			
			eds.addEducations(educations);
		}
		
		return "redirect:/all-users";
	}
}
