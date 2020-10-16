package it.trackerchallenge.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import it.trackerchallenge.entity.User;
import it.trackerchallenge.entity.Itinerary;
import it.trackerchallenge.service.ItineraryService;
import it.trackerchallenge.service.TransportationService;
import it.trackerchallenge.service.UserService;

@Controller
public class ItineraryController {

	@Autowired
	private UserService userService;
	
	@Autowired
	private TransportationService transportationService;
	
	@Autowired
	private ItineraryService itineraryService;
	
	@RequestMapping(value = "/view-records", method = RequestMethod.GET)
	public String viewRecords(HttpServletRequest request, HttpServletResponse response, Model model, Locale locale) {
		
		/*
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("loggedUser");
		*/
		
		User user = userService.load(1);
		
		String radioValue = request.getParameter("radioValueCategory");
		
		List<Itinerary> itineraries;
		Map<Integer, String> transportNominatives = new HashMap<Integer, String>();
		Map<Integer, String> userNominatives = new HashMap<Integer, String>();
		
		switch (radioValue) {
		default:
		case "user_itineraries":
			
			itineraries = itineraryService.showItineraries(user.getId());
			
			
			for(Itinerary i : itineraries) {
				transportNominatives.put(i.getId(), transportationService.getTransportNominative(i.getTransportationId()));
			}
			
			model.addAttribute("category", "user_itineraries");
			model.addAttribute("records", itineraries);
			model.addAttribute("transportNominatives", transportNominatives);
			
			break;
		case "all_itineraries":
			
			itineraries = itineraryService.showItineraries();

			for(Itinerary i : itineraries) {
				userNominatives.put(i.getId(), userService.getUserNominative(i.getUserId()));
				transportNominatives.put(i.getId(), transportationService.getTransportNominative(i.getTransportationId()));
			}
			
			model.addAttribute("category", "all_itineraries");
			model.addAttribute("records", itineraries);
			model.addAttribute("userNominatives", userNominatives);
			model.addAttribute("transportNominatives", transportNominatives);
			
			break;
			
		}
			
		
		return "view";
	}
	
}
