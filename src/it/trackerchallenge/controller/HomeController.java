package it.trackerchallenge.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import it.trackerchallenge.service.TransportationService;

@Controller
public class HomeController {

	@Autowired
	private TransportationService transportationService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpServletRequest request, HttpServletResponse response, Model model, Locale locale) {
		return enterIndexPage(request, response, model, locale);
	}
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String enterIndexPage(HttpServletRequest request, HttpServletResponse response, Model model, Locale locale) {
		return "index";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String enterLoginPage(HttpServletRequest request, HttpServletResponse response, Model model, Locale locale) {
		return "login";
	}
	
	@RequestMapping(value = "/sign_in", method = RequestMethod.GET)
	public String enterSignInPage(HttpServletRequest request, HttpServletResponse response, Model model, Locale locale) {
		return "sign_in";
	}
	

	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public String enterProfilePage(HttpServletRequest request, HttpServletResponse response, Model model, Locale locale) {
		return "profile";
	}
	
	@RequestMapping(value = "/add_itinerary", method = RequestMethod.GET)
	public String enterAddItineraryPage(HttpServletRequest request, HttpServletResponse response, Model model, Locale locale) {
		
		model.addAttribute("transportations", transportationService.getAllTransport());
		
		return "add_itinerary";
	}
	
	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public String enterViewPage(HttpServletRequest request, HttpServletResponse response, Model model, Locale locale) {
		return "view";
	}

}
