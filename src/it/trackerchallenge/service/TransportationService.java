package it.trackerchallenge.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import it.trackerchallenge.entity.Transportation;
import it.trackerchallenge.repository.TransportationRepository;

@Service
public class TransportationService {
	@Autowired
	TransportationRepository transportationRepository;
	
	public String getTransportNominative(int id) {
		
		Optional<Transportation> transportation = transportationRepository.findById(id);
		
		return transportation.isPresent() ? transportation.get().getTransport() : null;
		
	}
}

