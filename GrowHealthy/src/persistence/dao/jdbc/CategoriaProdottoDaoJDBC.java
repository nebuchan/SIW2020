package persistence.dao.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import model.CategoriaProdotto;
import persistence.DataSource;
import persistence.dao.CategoriaProdottoDao;

public class CategoriaProdottoDaoJDBC implements CategoriaProdottoDao {
	private DataSource dataSource;

	public CategoriaProdottoDaoJDBC(DataSource dataSource) {
		super();
		this.dataSource = dataSource;
	}

	@Override
	public CategoriaProdotto findByPrimaryKey(String categoria) {
		Connection connection = null;
		CategoriaProdotto categoriaProdotto = null;
		try {
			connection = this.dataSource.getConnection();
			PreparedStatement statement;
			String query = "select * from categoria_prodotto where categoria = ?";
			statement = connection.prepareStatement(query);
			statement.setString(1, categoria);
			ResultSet result = statement.executeQuery();
			if (result.next()) {
				categoriaProdotto = new CategoriaProdotto();
				categoriaProdotto.setCategoria(result.getString("categoria"));

			}
		} catch (SQLException e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				throw new RuntimeException(e.getMessage());
			}
		}
		return categoriaProdotto;
	}

	@Override
	public List<CategoriaProdotto> findAll() {
		Connection connection = null;
		List<CategoriaProdotto> categorieProdotti = new LinkedList<>();
		try {
			connection = this.dataSource.getConnection();
			CategoriaProdotto categoriaProdotto;
			PreparedStatement statement;
			String query = "select * from categoria_prodotto";
			statement = connection.prepareStatement(query);
			ResultSet result = statement.executeQuery();
			while (result.next()) {
				categoriaProdotto = new CategoriaProdotto();
				categoriaProdotto.setCategoria(result.getString("categoria"));

				categorieProdotti.add(categoriaProdotto);
			}
		} catch (SQLException e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				throw new RuntimeException(e.getMessage());
			}
		}
		return categorieProdotti;
	}

}
