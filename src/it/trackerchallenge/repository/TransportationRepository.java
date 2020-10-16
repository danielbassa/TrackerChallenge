package it.trackerchallenge.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import it.trackerchallenge.entity.Transportation;

@Repository
public interface TransportationRepository extends JpaRepository<Transportation, Integer> {

}
