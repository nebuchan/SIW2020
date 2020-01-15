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
			String insert = "insert into cliente(codice_fiscale, nome, cognome, indirizzo, data_nascita, telefono, email, password) values (?,?,?,?,?,?,?,?)";
			PreparedStatement statement = connection.prepareStatement(insert);
			statement.setString(1, cliente.getCodiceFiscale());
			statement.setString(2, cliente.getNome());
			statement.setString(3, cliente.getCognome());
			statement.setString(4, cliente.getIndirizzo());
			statement.setString(5, cliente.getDataDiNascita());
			statement.setString(6, cliente.getTelefono());
			statement.setString(7, cliente.getEmail());
			statement.setString(8, cliente.getPassword());
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
	public Cliente findByPrimaryKey(String codiceFiscale) {
		Connection connection = null;
		Cliente cliente = null;
		try {
			connection = this.dataSource.getConnection();
			PreparedStatement statement;
			String query = "select * from cliente where codice_fiscale = ?";
			statement = connection.prepareStatement(query);
			statement.setString(1, codiceFiscale);
			ResultSet result = statement.executeQuery();
			if (result.next()) {
				cliente = new Cliente();
				cliente.setCodiceFiscale(result.getString("codice_fiscale"));
				cliente.setNome(result.getString("nome"));
				cliente.setCognome(result.getString("cognome"));
				cliente.setIndirizzo(result.getString("indirizzo"));
				cliente.setDataDiNascita(result.getString("data_nascita"));
				cliente.setTelefono(result.getString("telefono"));
				cliente.setEmail(result.getString("email"));
				cliente.setPassword(result.getString("password"));

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
			String query = "select * from cliente";
			statement = connection.prepareStatement(query);
			ResultSet result = statement.executeQuery();
			while (result.next()) {
				cliente = new Cliente();
				cliente.setCodiceFiscale(result.getString("codice_fiscale"));
				cliente.setNome(result.getString("nome"));
				cliente.setCognome(result.getString("cognome"));
				cliente.setIndirizzo(result.getString("indirizzo"));
				cliente.setDataDiNascita(result.getString("data_nascita"));
				cliente.setTelefono(result.getString("telefono"));
				cliente.setEmail(result.getString("email"));
				cliente.setPassword(result.getString("password"));

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
			String update = "update cliente SET nome = ?, cognome = ?, indirizzo = ?, data_nascita = ?, telefono = ?, email = ?, password = ? WHERE codice_fiscale = ?";
			PreparedStatement statement = connection.prepareStatement(update);
			statement.setString(1, cliente.getNome());
			statement.setString(2, cliente.getCognome());
			statement.setString(3, cliente.getIndirizzo());
			statement.setString(4, cliente.getDataDiNascita());
			statement.setString(5, cliente.getTelefono());
			statement.setString(6, cliente.getEmail());
			statement.setString(7, cliente.getPassword());
			statement.setString(8, cliente.getCodiceFiscale());

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
			String delete = "delete FROM cliente WHERE codice_fiscale = ? ";
			PreparedStatement statement = connection.prepareStatement(delete);
			statement.setString(1, cliente.getCodiceFiscale());
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
