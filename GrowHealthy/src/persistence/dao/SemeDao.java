package persistence.dao;

import java.util.List;

import model.Seme;

public interface SemeDao {
	public void save(Seme seme); // Create

	public Seme findByPrimaryKey(int iD); // Retrieve

	public List<Seme> findAll();

	public void update(Seme seme); // Update

	public void delete(Seme seme); // Delete
}
