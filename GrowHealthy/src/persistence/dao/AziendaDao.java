package persistence.dao;

import java.util.List;

import model.Azienda;

public interface AziendaDao {
	public void save(Azienda azienda); // Create

	public Azienda findByPrimaryKey(int iD); // Retrieve

	public List<Azienda> findAll();

	public void update(Azienda azienda); // Update

	public void delete(Azienda azienda); // Delete

}
