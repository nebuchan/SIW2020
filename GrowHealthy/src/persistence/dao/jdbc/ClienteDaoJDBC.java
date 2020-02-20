package persistence.dao.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import model.Cliente;
import persistence.DataSource;
import persistence.dao.ClienteDao;

public class ClienteDaoJDBC implements ClienteDao {
	private DataSource dataSource;

	public ClienteDaoJDBC(DataSource dataSource) {
		super();
		this.dataSource = dataSource;
	}

	@Override
	public void save(Cliente cliente) {
		Connection connection = null;

		try {
			connection = this.dataSource.getConnection();
			String insert = "insert into Cliente(codice_fiscale, nome, cognome, telefono, email, password, via, citta, cap, data_nascita, regione, provincia) values (?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement statement = connection.prepareStatement(insert);
			statement.setString(1, cliente.getCodiceFiscale());
			statement.setString(2, cliente.getNome());
			statement.setString(3, cliente.getCognome());
			statement.setString(4, cliente.getTelefono());
			statement.setString(5, cliente.getEmail());
			statement.setString(6, cliente.getPassword());
			statement.setString(7, cliente.getVia());
			statement.setString(8, cliente.getCitta());
			statement.setString(9, cliente.getCap());
			statement.setString(10, cliente.getDataDiNascita());
			statement.setString(11, cliente.getRegione());
			statement.setString(12, cliente.getProvincia());
			
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
	public Cliente findByPrimaryKey(String email) {
		Connection connection = null;
		Cliente cliente = null;

		try {
			connection = this.dataSource.getConnection();
			PreparedStatement statement;
			String query = "select * from Cliente where email = ?";
			statement = connection.prepareStatement(query);
			statement.setString(1, email);
			ResultSet result = statement.executeQuery();
			if (result.next()) {

				cliente = new Cliente();
				cliente.setCodiceFiscale(result.getString("codice_fiscale"));
				cliente.setNome(result.getString("nome"));
				cliente.setCognome(result.getString("cognome"));
				cliente.setVia(result.getString("via"));
				cliente.setCitta(result.getString("citta"));
				cliente.setCap(result.getString("cap"));
				cliente.setDataDiNascita(result.getString("data_nascita"));
				cliente.setTelefono(result.getString("telefono"));
				cliente.setEmail(result.getString("email"));
				cliente.setPassword(result.getString("password"));
				cliente.setRegione(result.getString("regione"));
				cliente.setProvincia(result.getString("provincia"));

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
		return cliente;
	}

	@Override
	public List<Cliente> findAll() {
		Connection connection = null;
		List<Cliente> clienti = new LinkedList<>();
		try {
			connection = this.dataSource.getConnection();
			Cliente cliente;
			PreparedStatement statement;
			String query = "select * from Cliente";
			statement = connection.prepareStatement(query);
			ResultSet result = statement.executeQuery();
			while (result.next()) {
				cliente = new Cliente();
				cliente.setCodiceFiscale(result.getString("codice_fiscale"));
				cliente.setNome(result.getString("nome"));
				cliente.setCognome(result.getString("cognome"));
				cliente.setVia(result.getString("via"));
				cliente.setCitta(result.getString("citta"));
				cliente.setCap(result.getString("cap"));
				cliente.setDataDiNascita(result.getString("data_nascita"));
				cliente.setTelefono(result.getString("telefono"));
				cliente.setEmail(result.getString("email"));
				cliente.setPassword(result.getString("password"));
				cliente.setRegione(result.getString("regione"));
				cliente.setProvincia(result.getString("provincia"));

				clienti.add(cliente);
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
		return clienti;
	}

	@Override
	public void update(Cliente cliente) {
		Connection connection = null;
		try {
			connection = this.dataSource.getConnection();
			String update = "update cliente SET nome = ?, cognome = ?, via = ?, citta = ?, cap = ?, data_nascita = ?, telefono = ?, codice_fiscale = ?, password = ?, regione = ?, provincia = ? WHERE email = ?";
			PreparedStatement statement = connection.prepareStatement(update);
			statement.setString(1, cliente.getNome());
			statement.setString(2, cliente.getCognome());
			statement.setString(3, cliente.getVia());
			statement.setString(4, cliente.getCitta());
			statement.setString(5, cliente.getCap());
			statement.setString(6, cliente.getDataDiNascita());
			statement.setString(7, cliente.getTelefono());
			statement.setString(8, cliente.getCodiceFiscale());
			statement.setString(9, cliente.getPassword());
			statement.setString(10, cliente.getRegione());
			statement.setString(11, cliente.getProvincia());
			statement.setString(12, cliente.getEmail());

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
	public void delete(Cliente cliente) {
		Connection connection = null;
		try {
			connection = this.dataSource.getConnection();
			String delete = "delete FROM cliente WHERE email = ? ";
			PreparedStatement statement = connection.prepareStatement(delete);
			statement.setString(1, cliente.getEmail());
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
