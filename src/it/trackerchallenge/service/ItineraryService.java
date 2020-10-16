package it.trackerchallenge.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import it.trackerchallenge.entity.Itinerary;
import it.trackerchallenge.repository.ItineraryRepository;

@Service
public class ItineraryService {
	@Autowired
	ItineraryRepository itineraryRepository;
	
	public List<Itinerary> showItineraries() {
		List<Itinerary> itineraries = itineraryRepository.findAll();
		return itineraries;
	}
	
	public List<Itinerary> showItineraries(int userId) {
		List<Itinerary> itineraries = itineraryRepository.findByUserId(userId);
		return itineraries;
	}
}
