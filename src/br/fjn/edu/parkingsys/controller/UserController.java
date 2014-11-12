package br.fjn.edu.parkingsys.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.fjn.edu.parkingsys.components.UserSession;
import br.fjn.edu.parkingsys.dao.UserDAO;
import br.fjn.edu.parkingsys.model.User;

@Controller
public class UserController {

	@Inject
	private UserSession userSession;

	UserDAO userDAO = new UserDAO();

	public void newUser(User user) {
		if (userDAO.UserExists(user)) {
			// caso j� exista o usu�rio.
			System.out.println("O nome de usu�rio " + user.getName()
					+ " j� existe... Tente outro.");
		} else {
			userDAO.insert(user);
		}
	}

	public void loginUser(User user) {
		User loadUser = userDAO.loadUser(user);

		if (loadUser == null) {
			System.out.println("Usu�rio ou Senha inv�lidos.");

		} else {
			System.out.println("Bem vindo ao ParkingSys " + user.getUserName()
					+ " !");
			userSession.setUser(loadUser);
		}

	}

	public void logoutUser() {
		System.out.println("Usu�rio desconectado!");
		userSession.setUser(null);
	}
}
