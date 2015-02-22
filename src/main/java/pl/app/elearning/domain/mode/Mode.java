package pl.app.elearning.domain.mode;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import pl.app.elearning.domain.UserAccount;

@Entity
@Table(name = "MODE")
public abstract class Mode {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "ID")
	private int id;

	@Column(name = "NAME")
	@NotNull
	@Size(min = 2, max = 50)
	private String name;

	public Mode(String name) {
		setName(name);
	}

	public Mode() {
	}

	@ManyToOne
	@JoinColumn(name = "USER_ID")
	private UserAccount user;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		if (id < 1) {
			throw new IllegalArgumentException("Id is lower than 1");
		}
		this.id = id;
	}

	public void setName(String name) {
		if (name == null || name.isEmpty()) {
			throw new IllegalArgumentException("Invalid mode name");
		}
		this.name = name;
	}

	public String getName() {
		return name;
	}

	public UserAccount getUser() {
		return user;
	}

}
