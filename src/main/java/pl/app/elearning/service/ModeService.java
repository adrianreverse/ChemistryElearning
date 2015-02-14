package pl.app.elearning.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import pl.app.elearning.dao.ModeDao;
import pl.app.elearning.domain.mode.Mode;

@Service
@Transactional
public class ModeService {

	@Autowired
	private ModeDao modeDao;

	public Mode addMode(Mode mode) {
		return modeDao.save(mode);
	}

	public Mode addOrUpdateMode(Mode mode) {
		return modeDao.saveOrUpdate(mode);
	}

	public List<Mode> getAll() {
		return modeDao.findAll();
	}

	public Mode getModeById(int id) {
		return modeDao.findById(id);
	}

	public int deleteModeById(int id) {
		return modeDao.deleteById(id);
	}
}
