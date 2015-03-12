package pl.app.elearning.dao;

import org.springframework.stereotype.Repository;

import pl.app.elearning.domain.Message;

@Repository
public class MessageDao extends AbstractDaoImpl<Message> {

	private static final long serialVersionUID = 1L;

	public MessageDao() {
		super(Message.class);
	}

}
