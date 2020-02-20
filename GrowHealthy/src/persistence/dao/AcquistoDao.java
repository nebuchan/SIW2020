package persistence.dao;

import java.util.List;

import model.Acquisto;
import model.Cliente;

public interface AcquistoDao {
	
	public void save(Acquisto acquisto); // Create

	public Acquisto findByPrimaryKey(int iD); // Retrieve

	public List<Acquisto> findAll(); // Retrive
	
	public List<Acquisto> findByClient(Cliente cliente);
	
}
