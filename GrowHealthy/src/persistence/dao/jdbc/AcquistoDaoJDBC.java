package persistence.dao.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import model.Acquisto;
import model.Cliente;
import persistence.DataSource;
import persistence.dao.AcquistoDao;

public class AcquistoDaoJDBC implements AcquistoDao {

	private DataSource dataSource;

	public AcquistoDaoJDBC(DataSource dataSource) {
		this.dataSource = dataSource;

	}

	@Override
	public void save(Acquisto acquisto) {
		Connection connection = null;

		try {
			connection = this.dataSource.getConnection();
			String insert = "insert into acquisto(id, cliente, prodotto, quantita_p, importo, totale, codice_acquisto, data) values (?,?,?,?,?,?,?,?)";
			PreparedStatement statement = connection.prepareStatement(insert);
			statement.setInt(1, acquisto.getiD());
			statement.setString(2, acquisto.getCliente());
			statement.setInt(3, acquisto.getProdotto());
			statement.setInt(4, acquisto.getQuantita());
			statement.setDouble(5, acquisto.getImporto());
			statement.setDouble(6, acquisto.getTotale());
			statement.setInt(7, acquisto.getCodiceAcquisto());
			statement.setString(8, acquisto.getData());

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
	public Acquisto findByPrimaryKey(int iD) {
		Connection connection = null;
		Acquisto acquisto = null;
		try {
			connection = this.dataSource.getConnection();
			PreparedStatement statement;
			String query = "select * from acquisto where id = ?";
			statement = connection.prepareStatement(query);
			statement.setInt(1, iD);
			ResultSet result = statement.executeQuery();
			if (result.next()) {
				acquisto = new Acquisto();
				acquisto.setiD(result.getInt("id"));
				acquisto.setCliente(result.getString("cliente"));
				acquisto.setProdotto(result.getInt("prodotto"));
				acquisto.setQuantita(result.getInt("quantita_p"));
				acquisto.setImporto(result.getDouble("importo"));
				acquisto.setTotale(result.getDouble("totale"));
				acquisto.setCodiceAcquisto(result.getInt("codice_acquisto"));
				acquisto.setData(result.getString("data"));

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
		return acquisto;
	}

	@Override
	public List<Acquisto> findAll() {
		Connection connection = null;
		List<Acquisto> acquisti = new LinkedList<>();
		try {
			connection = this.dataSource.getConnection();
			Acquisto acquisto;
			PreparedStatement statement;
			String query = "select * from acquisto";
			statement = connection.prepareStatement(query);
			ResultSet result = statement.executeQuery();
			while (result.next()) {
				acquisto = new Acquisto();
				acquisto.setiD(result.getInt("id"));
				acquisto.setCliente(result.getString("cliente"));
				acquisto.setProdotto(result.getInt("prodotto"));
				acquisto.setQuantita(result.getInt("quantita_p"));
				acquisto.setImporto(result.getDouble("importo"));
				acquisto.setTotale(result.getDouble("totale"));
				acquisto.setCodiceAcquisto(result.getInt("codice_acquisto"));
				acquisto.setData(result.getString("data"));

				acquisti.add(acquisto);
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
		return acquisti;
	}

	@Override
	public List<Acquisto> findByClient(Cliente cliente) {
		Connection connection = null;
		List<Acquisto> acquisti = new LinkedList<>();
		try {
			connection = this.dataSource.getConnection();
			Acquisto acquisto;
			PreparedStatement statement;
			String query = "select * from acquisto where cliente = ?";
			statement = connection.prepareStatement(query);
			statement.setString(1, cliente.getEmail());
			ResultSet result = statement.executeQuery();
			while (result.next()) {
				acquisto = new Acquisto();
				acquisto.setiD(result.getInt("id"));
				acquisto.setCliente(result.getString("cliente"));
				acquisto.setProdotto(result.getInt("prodotto"));
				acquisto.setQuantita(result.getInt("quantita_p"));
				acquisto.setImporto(result.getDouble("importo"));
				acquisto.setTotale(result.getDouble("totale"));
				acquisto.setCodiceAcquisto(result.getInt("codice_acquisto"));
				acquisto.setData(result.getString("data"));

				acquisti.add(acquisto);
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
		return acquisti;
	}

}
