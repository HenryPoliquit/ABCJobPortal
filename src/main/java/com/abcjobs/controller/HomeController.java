package com.abcjobs.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	@RequestMapping(value="/") // home page
	public ModelAndView landing() {
		return new ModelAndView("redirect:/home");
	}
	
	@RequestMapping(value="/home") // home page
	public ModelAndView home(HttpServletResponse res, HttpServletRequest req, 
			@CookieValue(value = "email", defaultValue = "") String email,
			@CookieValue(value = "userId", defaultValue = "") String userId,
			HttpSession session) {
		
		if(!email.equals("")) {
			// add session
			session.setAttribute("email", email);
			session.setAttribute("userId", userId);
			session.setAttribute("isLogin", true);
		}		
		return new ModelAndView("landing");
	}
	
	@RequestMapping(value="/thankyou") //thank you page
	public ModelAndView thankyou(HttpServletResponse res) throws Exception {
		return new ModelAndView("registration/thankyou"); 
	}
	
	@RequestMapping(value="/verifyCode") // verify code page
	public ModelAndView verifyCode(HttpServletResponse res) throws Exception {
		return new ModelAndView("registration/verifyCode"); 
	}
	
	@RequestMapping(value="/verifyCode", method = RequestMethod.POST) //6-digit code submission leads to verified page
	public String verifyCode() throws Exception {
		return "registration/verified"; 
	}
	
	@RequestMapping(value="/verified") //verified page
	public ModelAndView verified() throws Exception {
		return new ModelAndView("registration/verified"); 
	}
}
