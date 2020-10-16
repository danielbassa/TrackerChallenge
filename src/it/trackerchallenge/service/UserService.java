package it.trackerchallenge.service;

import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import it.trackerchallenge.entity.User;
import it.trackerchallenge.repository.UserRepository;

@Service
public class UserService {
	@Autowired
	UserRepository userRepository;
	
	public String getUserNominative(int id) {
		
		Optional<User> user = userRepository.findById(id);
		
		if (user.isPresent()) {
			StringBuilder nominative = new StringBuilder();
			nominative.append(user.get().getName()).append(" ").append(user.get().getSurname());
			return nominative.toString();
		} else {
			return null;
		}
	}
	
	
	@Transactional
	public void insertUser(User user) {
		if (user == null) {
			throw new IllegalArgumentException("user doesn't exist");
		}
		userRepository.save(user);
	}
	
	public User load(Integer id) {
		Optional<User> user = userRepository.findById(id);
		return user.isPresent() ? user.get() : null;
	}
	
	@Transactional
	public void updateUser(Integer id, User userData) {
		if (userData == null) {
			throw new IllegalArgumentException("userData is null");
		}
		if (!"".equals(userData.getSurname()) || !"".equals(userData.getName()) ||
				!"".equals(userData.getEmail()) || !"".equals(userData.getMobile()) || !"".equals(userData.getPassword())) {
				User user = load(id);
				if (user == null) {
					throw new IllegalArgumentException("A user with id " + id + " doesn't exist");
				}
				BeanUtils.copyProperties(userData, user, "id");
				userRepository.save(user);	
			} else throw new IllegalArgumentException("dati utente non presenti"); 
	}
	
	
	
	public User login(String email, String password) {
		Optional<User> user = userRepository.findByEmailAndPassword(email, password);
		return user.isPresent() ? user.get() : null;
	}
}
