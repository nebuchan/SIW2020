package persistence.dao.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import model.Seme;
import persistence.DataSource;
import persistence.dao.SemeDao;

public class SemeDaoJDBC implements SemeDao {
	private DataSource dataSource;

	public SemeDaoJDBC(DataSource dataSource) {
		super();
		this.dataSource = dataSource;
	}

	@Override
	public void save(Seme seme) {
		Connection connection = null;

		try {
			connection = this.dataSource.getConnection();
			String insert = "insert into seme(iD, nome, categoria, tempo_coltivazione, periodo_coltivazione) values (?,?,?,?,?)";
			PreparedStatement statement = connection.prepareStatement(insert);
			statement.setInt(1, seme.getiD());
			statement.setString(2, seme.getNome());
			statement.setString(3, seme.getCategoria());
			statement.setInt(4, seme.getTempoColtivazione());
			statement.setString(5, seme.getPeriodoColtivazione());

			statement.executeUpdate();

		} catch (SQLException e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				throw new RuntimeException(e.getMessage());
			}
		}

	}

	@Override
	public Seme findByPrimaryKey(int iD) {
		Connection connection = null;
		Seme seme = null;
		try {
			connection = this.dataSource.getConnection();
			PreparedStatement statement;
			String query = "select * from seme where iD = ?";
			statement = connection.prepareStatement(query);
			statement.setInt(1, iD);
			ResultSet result = statement.executeQuery();
			if (result.next()) {
				seme = new Seme();
				seme.setiD(result.getInt("iD"));
				seme.setNome(result.getString("nome"));
				seme.setCategoria(result.getString("categoria"));
				seme.setTempoColtivazione(result.getInt("tempo_coltivazione"));
				seme.setPeriodoColtivazione(result.getString("periodo_coltivazione"));

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
		return seme;
	}

	@Override
	public List<Seme> findAll() {
		Connection connection = null;
		List<Seme> semi = new LinkedList<>();
		try {
			connection = this.dataSource.getConnection();
			Seme seme;
			PreparedStatement statement;
			String query = "select * from seme";
			statement = connection.prepareStatement(query);
			ResultSet result = statement.executeQuery();
			while (result.next()) {
				seme = new Seme();
				seme.setiD(result.getInt("iD"));
				seme.setNome(result.getString("nome"));
				seme.setCategoria(result.getString("categoria"));
				seme.setTempoColtivazione(result.getInt("tempo_coltivazione"));
				seme.setPeriodoColtivazione(result.getString("periodo_coltivazione"));

				semi.add(seme);
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
		return semi;
	}

	@Override
	public void update(Seme seme) {
		Connection connection = null;
		try {
			connection = this.dataSource.getConnection();
			String update = "update seme SET nome = ?, categoria = ?, tempo_coltivazione = ?, periodo_coltivazione = ? WHERE iD = ?";
			PreparedStatement statement = connection.prepareStatement(update);
			statement.setString(1, seme.getNome());
			statement.setString(2, seme.getCategoria());
			statement.setInt(3, seme.getTempoColtivazione());
			statement.setString(4, seme.getPeriodoColtivazione());
			statement.setInt(5, seme.getiD());

			statement.executeUpdate();
		} catch (SQLException e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				throw new RuntimeException(e.getMessage());
			}
		}

	}

	@Override
	public void delete(Seme seme) {
		Connection connection = null;
		try {
			connection = this.dataSource.getConnection();
			String delete = "delete FROM seme WHERE iD = ? ";
			PreparedStatement statement = connection.prepareStatement(delete);
			statement.setInt(1, seme.getiD());
			statement.executeUpdate();
		} catch (SQLException e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				throw new RuntimeException(e.getMessage());
			}
		}

	}

}
