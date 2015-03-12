package pl.app.elearning.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import pl.app.elearning.dao.MessageDao;
import pl.app.elearning.domain.Message;

@Service
@Transactional(readOnly = true)
public class MessageService {

	@Autowired
	private MessageDao messageDao;

	@Transactional(readOnly = false)
	public Message addMessage(Message message) {
		return messageDao.save(message);
	}

	@Transactional(readOnly = false)
	public Message addOrUpdateMessage(Message message) {
		return messageDao.saveOrUpdate(message);
	}

	@Transactional(readOnly = false)
	public List<Message> getAll() {
		return messageDao.findAll();
	}

	@Transactional(readOnly = false)
	public Message getMessageById(int id) {
		return messageDao.findById(id);
	}

	@Transactional(readOnly = false)
	public int deleteMessageById(int id) {
		return messageDao.deleteById(id);
	}
}
