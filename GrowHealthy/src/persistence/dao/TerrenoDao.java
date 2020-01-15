package persistence.dao;

import java.util.List;

import model.Terreno;

public interface TerrenoDao {
	public void save(Terreno terreno); // Create

	public Terreno findByPrimaryKey(int iD); // Retrieve

	public List<Terreno> findAll();

	public void update(Terreno terreno); // Update

	public void delete(Terreno terreno); // Delete
}
