package pl.app.elearning.dao;

import java.io.Serializable;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

public class AbstractDaoImpl<T> implements AbstractDao<T>, Serializable {

	private static final long serialVersionUID = 1L;

	@PersistenceContext(unitName = "punit")
	private EntityManager entityManager;

	private Class<T> clazz;

	public AbstractDaoImpl(Class<T> clazz) {
		this.clazz = clazz;
	}

	protected Session getSession() {
		return entityManager.unwrap(Session.class);
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<T> findAll() {
		return createCriteria().list();
	}

	@Override
	public T save(T e) {
		getSession().save(e);
		return e;
	}

	@Override
	public T saveOrUpdate(T e) {
		getSession().saveOrUpdate(e);
		return e;
	}

	@Override
	public Criteria createCriteria() {
		return getSession().createCriteria(clazz);
	}

	@Override
	public Query createQuery(String hql) {
		return getSession().createQuery(hql);
	}

	@SuppressWarnings("unchecked")
	@Override
	public T findById(int id) {
		return (T) createCriteria().add(Restrictions.eq("id", id)).uniqueResult();
	}

	@Override
	public int deleteById(int id) {
		String hql = "delete from " + clazz.getCanonicalName() + " where id= :id";
		return getSession().createQuery(hql).setInteger("id", id).executeUpdate();
	}

}
