package persistence.dao;

import java.util.List;

import model.Terreno;


public interface TerrenoDao {
	
	public Terreno findByPrimaryKey(int iD);
	public List<Terreno> findAll();
	
	public void save(Terreno terreno);
	public void update(Terreno terreno);
	public void delete(Terreno terreno);
	
}
