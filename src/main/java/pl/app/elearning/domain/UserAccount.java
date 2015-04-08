package pl.app.elearning.domain;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.ScriptAssert;

import pl.app.elearning.domain.mode.Mode;

@ScriptAssert(lang = "javascript", script = "_this.passwordConfirmation.equals(_this.password)", message = "account.password.mismatch.message")
@Entity
@Table(name = "USER")
public class UserAccount implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "ID")
	private int id;

	@Column(name = "NAME")
	@NotNull
	@Size(min = 2, max = 50)
	private String name;

	@Column(name = "SURNAME")
	@NotNull
	@Size(min = 2, max = 50)
	private String surname;

	@Column(name = "LOGIN")
	@NotNull
	@Size(min = 1, max = 50)
	private String login;

	@Column(name = "EMAIL")
	@NotNull
	@Size(min = 6, max = 50)
	@Email
	private String email;

	@Column(name = "PASSWORD")
	@NotNull
	@Size(min = 6, max = 50)
	private String password;

	@Transient
	private String passwordConfirmation;

	public UserAccount(int id, String name, String surname, String login, String email, String password) {
		setId(id);
		setName(name);
		setSurname(surname);
		setLogin(login);
		setEmail(email);
		setPassword(password);
	}

	public UserAccount(String login, String password) {
		setLogin(login);
		setPassword(password);
	}

	public UserAccount() {
	}

	@OneToMany(mappedBy = "user")
	List<Mode> modes;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		if (id < 1) {
			throw new IllegalArgumentException("Id is lower than 1");
		}
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		if (name == null || name.isEmpty()) {
			throw new IllegalArgumentException("Invalid name");
		}
		this.name = name;
	}

	public String getSurname() {
		return surname;
	}

	public void setSurname(String surname) {
		if (surname == null || surname.isEmpty()) {
			throw new IllegalArgumentException("Invalid surname");
		}
		this.surname = surname;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		if (login == null || login.isEmpty()) {
			throw new IllegalArgumentException("Invalid login");
		}
		this.login = login;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		if (email == null || email.isEmpty()) {
			throw new IllegalArgumentException("Invalid email");
		}
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		if (password == null || password.isEmpty()) {
			throw new IllegalArgumentException("Invalid password");
		}
		this.password = password;
	}

	public String getPasswordConfirmation() {
		return passwordConfirmation;
	}

	public void setPasswordConfirmation(String passwordConfirmation) {
		if (passwordConfirmation == null || passwordConfirmation.isEmpty()) {
			throw new IllegalArgumentException("Invalid password confirmation");
		}
		this.passwordConfirmation = passwordConfirmation;
	}

	public List<Mode> getModes() {
		return modes;
	}

	@Override
	public String toString() {
		return new ToStringBuilder(this, ToStringStyle.SHORT_PREFIX_STYLE).append("login", login)
				.append("email", email).toString();
	}

}
