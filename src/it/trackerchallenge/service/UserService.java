package it.trackerchallenge.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import it.trackerchallenge.repository.UserRepository;

@Service
public class UserService {
	@Autowired
	UserRepository userRepository;
}
