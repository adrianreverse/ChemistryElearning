package pl.app.elearning.dao;

import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import pl.app.elearning.domain.UserAccount;

@Repository
public class UserAccountDao extends AbstractDaoImpl<UserAccount> {

	private static final long serialVersionUID = 1L;

	public UserAccountDao() {
		super(UserAccount.class);
	}

	public UserAccount findByUserLogin(String login) {
		return (UserAccount) createCriteria().add(Restrictions.eq("login", login)).uniqueResult();
	}

	public UserAccount findByUserEmail(String email) {
		return (UserAccount) createCriteria().add(Restrictions.eq("email", email)).uniqueResult();
	}

}
