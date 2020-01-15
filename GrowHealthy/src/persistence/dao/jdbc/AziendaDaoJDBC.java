package persistence.dao.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import model.Azienda;
import persistence.DataSource;
import persistence.dao.AziendaDao;

public class AziendaDaoJDBC implements AziendaDao {
	private DataSource dataSource;

	public AziendaDaoJDBC(DataSource dataSource) {
		super();
		this.dataSource = dataSource;
	}

	@Override
	public void save(Azienda azienda) {
		Connection connection = null;

		try {
			connection = this.dataSource.getConnection();
			String insert = "insert into azienda(iD, ragione_sociale, sede_legale, partita_iva, referente, descrizione, telefono, email, password) values (?,?,?,?,?,?,?,?,?)";
			PreparedStatement statement = connection.prepareStatement(insert);
			statement.setInt(1, azienda.getiD());
			statement.setString(2, azienda.getRagioneSociale());
			statement.setString(3, azienda.getSedeLegale());
			statement.setInt(4, azienda.getpIva());
			statement.setString(5, azienda.getReferente());
			statement.setString(6, azienda.getDescrizione());
			statement.setString(7, azienda.getTelefono());
			statement.setString(8, azienda.getEmail());
			statement.setString(9, azienda.getPassword());
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
	public Azienda findByPrimaryKey(int iD) {
		Connection connection = null;
		Azienda azienda = null;
		try {
			connection = this.dataSource.getConnection();
			PreparedStatement statement;
			String query = "select * from azienda where iD = ?";
			statement = connection.prepareStatement(query);
			statement.setInt(1, iD);
			ResultSet result = statement.executeQuery();
			if (result.next()) {
				azienda = new Azienda();
				azienda.setiD(result.getInt("iD"));
				azienda.setRagioneSociale(result.getString("ragione_sociale"));
				azienda.setSedeLegale(result.getString("sede_legale"));
				azienda.setpIva(result.getInt("partita_iva"));
				azienda.setReferente(result.getString("referente"));
				azienda.setDescrizione(result.getString("descrizione"));
				azienda.setTelefono(result.getString("telefono"));
				azienda.setEmail(result.getString("email"));
				azienda.setPassword(result.getString("password"));
				statement.executeUpdate();

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
		return azienda;
	}

	@Override
	public List<Azienda> findAll() {
		Connection connection = null;
		List<Azienda> aziende = new LinkedList<>();
		try {
			connection = this.dataSource.getConnection();
			Azienda azienda;
			PreparedStatement statement;
			String query = "select * from azienda";
			statement = connection.prepareStatement(query);
			ResultSet result = statement.executeQuery();
			while (result.next()) {
				azienda = new Azienda();
				azienda.setiD(result.getInt("iD"));
				azienda.setRagioneSociale(result.getString("ragione_sociale"));
				azienda.setSedeLegale(result.getString("sede_legale"));
				azienda.setpIva(result.getInt("partita_iva"));
				azienda.setReferente(result.getString("referente"));
				azienda.setDescrizione(result.getString("descrizione"));
				azienda.setTelefono(result.getString("telefono"));
				azienda.setEmail(result.getString("email"));
				azienda.setPassword(result.getString("password"));

				aziende.add(azienda);
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
		return aziende;
	}

	@Override
	public void update(Azienda azienda) {
		Connection connection = null;
		try {
			connection = this.dataSource.getConnection();
			String update = "update azienda SET ragione_sociale = ?, sede_legale = ?, partita_iva = ?, referente = ?, descrizione = ?, telefono = ?, email = ?, password = ? WHERE iD = ?";
			PreparedStatement statement = connection.prepareStatement(update);
			statement.setString(1, azienda.getRagioneSociale());
			statement.setString(2, azienda.getSedeLegale());
			statement.setInt(3, azienda.getpIva());
			statement.setString(4, azienda.getReferente());
			statement.setString(5, azienda.getDescrizione());
			statement.setString(6, azienda.getTelefono());
			statement.setString(7, azienda.getEmail());
			statement.setString(8, azienda.getPassword());
			statement.setInt(9, azienda.getiD());

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
	public void delete(Azienda azienda) {
		Connection connection = null;
		try {
			connection = this.dataSource.getConnection();
			String delete = "delete FROM azienda WHERE iD = ? ";
			PreparedStatement statement = connection.prepareStatement(delete);
			statement.setInt(1, azienda.getiD());
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
