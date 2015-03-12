package pl.app.elearning.domain;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "MESSAGE")
public class Message implements Serializable {

	private static final long serialVersionUID = 1L;

	public Message() {
	}

}
