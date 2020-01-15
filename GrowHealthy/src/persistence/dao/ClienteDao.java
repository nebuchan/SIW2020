package persistence.dao;

import java.util.List;

import model.Cliente;

public interface ClienteDao {
	public void save(Cliente cliente); // Create

	public Cliente findByPrimaryKey(String codiceFiscale); // Retrieve

	public List<Cliente> findAll();

	public void update(Cliente cliente); // Update

	public void delete(Cliente cliente); // Delete

}
