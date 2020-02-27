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
			String insert = "insert into azienda(email, password, ragione_sociale, sede_legale, referente, telefono, descrizione, partita_iva) values (?,?,?,?,?,?,?,?)";
			PreparedStatement statement = connection.prepareStatement(insert);
			statement.setString(1, azienda.getEmail());
			statement.setString(2, azienda.getPassword());
			statement.setString(3, azienda.getRagioneSociale());
			statement.setString(4, azienda.getSedeLegale());
			statement.setString(5, azienda.getpIva());
			statement.setString(6, azienda.getReferente());
			statement.setString(7, azienda.getTelefono());
			statement.setString(8, azienda.getDescrizione());
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
	public Azienda findByPrimaryKey(String email) {
		Connection connection = null;
		Azienda azienda = null;
		try {
			connection = this.dataSource.getConnection();
			PreparedStatement statement;
			String query = "select * from azienda where email = ?";
			statement = connection.prepareStatement(query);
			statement.setString(1, email);
			ResultSet result = statement.executeQuery();
			if (result.next()) {
				azienda = new Azienda();
				azienda.setEmail(result.getString("email"));
				azienda.setPassword(result.getString("password"));
				azienda.setRagioneSociale(result.getString("ragione_sociale"));
				azienda.setSedeLegale(result.getString("sede_legale"));
				azienda.setpIva(result.getString("partita_iva"));
				azienda.setReferente(result.getString("referente"));
				azienda.setTelefono(result.getString("telefono"));
				azienda.setDescrizione(result.getString("descrizione"));

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
				azienda.setEmail(result.getString("email"));
				azienda.setPassword(result.getString("password"));
				azienda.setRagioneSociale(result.getString("ragione_sociale"));
				azienda.setSedeLegale(result.getString("sede_legale"));
				azienda.setpIva(result.getString("partita_iva"));
				azienda.setReferente(result.getString("referente"));
				azienda.setTelefono(result.getString("telefono"));
				azienda.setDescrizione(result.getString("descrizione"));

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
			String update = "update azienda SET password = ?, ragione_sociale = ?, sede_legale = ?, partita_iva = ?, referente = ?, descrizione = ?, telefono = ? WHERE email = ?";
			PreparedStatement statement = connection.prepareStatement(update);
			statement.setString(1, azienda.getPassword());
			statement.setString(2, azienda.getRagioneSociale());
			statement.setString(3, azienda.getSedeLegale());
			statement.setString(4, azienda.getpIva());
			statement.setString(5, azienda.getReferente());
			statement.setString(6, azienda.getTelefono());
			statement.setString(7, azienda.getDescrizione());
			statement.setString(8, azienda.getEmail());

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
			String delete = "delete FROM azienda WHERE email = ? ";
			PreparedStatement statement = connection.prepareStatement(delete);
			statement.setString(1, azienda.getEmail());
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
