package it.trackerchallenge.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import it.trackerchallenge.entity.User;
import it.trackerchallenge.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	private Logger log = LoggerFactory.getLogger(this.getClass());
	
	@PostMapping("/login-user")
	public String login(@RequestParam String email, @RequestParam String password, Model model, HttpServletRequest request) {
		User loggedUser = userService.login(email, password);
		if (loggedUser == null) {
			model.addAttribute("error", "wrong credentials");
			return "login";
		}
		model.addAttribute("loggedUser",loggedUser);
		request.getSession().setAttribute("loggedUser", loggedUser);
		return "index";
	}
	
	@PostMapping("/signin-user")
	public String signIn(User user, Model model) {
		userService.insertUser(user);
		model.addAttribute("confirmation", "You're account has been registred correctly");
		return "login";
	}
	
	@PostMapping("/edit-user")
	public String edit(User user, Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		User userSession = (User) session.getAttribute("loggedUser");
		user.setEmail(userSession.getEmail());
		userService.updateUser(userSession.getId(), user);
		model.addAttribute("editOk", "Your account has been updated");
		return "index";
	}
	
	@PostMapping("/logout-user")
	public String logout(HttpServletRequest request) {
		request.getSession().invalidate();
		return "login";
	}
}
