package pl.app.elearning.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;

public interface AbstractDao<T> {

	List<T> findAll();

	T save(T e);

	T saveOrUpdate(T e);

	Criteria createCriteria();

	Query createQuery(String hql);

	T findById(int id);

	int deleteById(int id);

}