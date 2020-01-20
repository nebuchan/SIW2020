package persistence.dao;

import java.util.List;

import model.CategoriaProdotto;

public interface CategoriaProdottoDao {
	public CategoriaProdotto findByPrimaryKey(String categoria); // Retrieve

	public List<CategoriaProdotto> findAll();

}
