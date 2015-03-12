package pl.app.elearning.dao;

import org.springframework.stereotype.Repository;

import pl.app.elearning.domain.mode.Mode;

@Repository
public class ModeDao extends AbstractDaoImpl<Mode> {

	private static final long serialVersionUID = 1L;

	public ModeDao() {
		super(Mode.class);
	}

}