package pl.app.elearning.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import pl.app.elearning.dao.ModeDao;
import pl.app.elearning.domain.mode.Mode;

@Service
@Transactional(readOnly = true)
public class ModeService {

	@Autowired
	private ModeDao modeDao;

	@Transactional(readOnly = false)
	public Mode addMode(Mode mode) {
		return modeDao.save(mode);
	}

	@Transactional(readOnly = false)
	public Mode addOrUpdateMode(Mode mode) {
		return modeDao.saveOrUpdate(mode);
	}

	@Transactional(readOnly = false)
	public List<Mode> getAll() {
		return modeDao.findAll();
	}

	@Transactional(readOnly = false)
	public Mode getModeById(int id) {
		return modeDao.findById(id);
	}

	@Transactional(readOnly = false)
	public int deleteModeById(int id) {
		return modeDao.deleteById(id);
	}
}
