package pl.app.elearning.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.Errors;

import pl.app.elearning.dao.UserAccountDao;
import pl.app.elearning.domain.UserAccount;

@Service
@Transactional(readOnly = true)
public class UserAccountService {

	@Autowired
	private UserAccountDao userDao;

	@Transactional(readOnly = false)
	public UserAccount addUser(UserAccount user) {
		return userDao.save(user);
	}

	@Transactional(readOnly = false)
	public UserAccount addOrUpdateUser(UserAccount user) {
		return userDao.saveOrUpdate(user);
	}

	@Transactional(readOnly = false)
	public List<UserAccount> getAll() {
		return userDao.findAll();
	}

	@Transactional(readOnly = false)
	public UserAccount getUserById(int id) {
		return userDao.findById(id);
	}

	@Transactional(readOnly = false)
	public UserAccount getUserByLogin(String login) {
		return userDao.findByUserLogin(login);
	}

	@Transactional(readOnly = false)
	public int deleteUserById(int id) {
		return userDao.deleteById(id);
	}

	@Transactional(readOnly = false)
	public boolean createAccount(UserAccount userAccount, Errors errors) {
		validateLogin(userAccount.getLogin(), errors);
		boolean valid = !errors.hasErrors();
		if (valid) {
			userDao.save(userAccount);
		}
		return valid;
	}

	private void validateLogin(String login, Errors errors) {
		if (userDao.findByUserLogin(login) != null) {
			errors.rejectValue("login", "abc", new String[] { login }, null);
		}
	}

	public Boolean isLoginExists(String login) {
		return userDao.findByUserLogin(login) == null;
	}

	public Boolean isEmailExists(String email) {
		return userDao.findByUserEmail(email) == null;
	}

	public Boolean isPasswordExists(UserAccount user, String password) {
		if (user != null) {
			return user.getPassword().equals(password);
		}
		return false;

	}

	public String userLoginLoggedIn() {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		return auth.getName();
	}
	//
	// public Boolean isCredentialsCorrect(String login, String password) {
	// UserAccount user = userDao.findByUserLogin(login);
	// if (user != null) {
	// return password.equals(user.getPassword());
	// }
	// return false;
	// }
}
