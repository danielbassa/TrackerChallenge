package it.trackerchallenge.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import it.trackerchallenge.entity.Itinerary;

@Repository
public interface ItineraryRepository extends JpaRepository<Itinerary, Integer> {
	List<Itinerary> findByUserId(int userId);
}
