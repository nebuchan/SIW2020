package persistence.dao.jdbc;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import model.Acquisto;
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
			String insert = "insert into acquisto(id, cliente, prodotto, quantita_p, data, importo, totale, codice_acquisto) values (?,?,?,?,?,?,?,?)";
			PreparedStatement statement = connection.prepareStatement(insert);
			statement.setInt(1, acquisto.getiD());
			statement.setString(2, acquisto.getCliente());
			statement.setInt(3, acquisto.getProdotto());
			statement.setInt(4, acquisto.getQuantita());

			long tmpData = acquisto.getData().getTime();

			statement.setDate(5, new Date(tmpData));
			statement.setDouble(6, acquisto.getImporto());
			statement.setDouble(7, acquisto.getTotale());
			statement.setInt(8, acquisto.getCodiceAcquisto());

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

				long tmpData = result.getDate("data").getTime();

				acquisto.setData(new java.util.Date(tmpData));
				acquisto.setImporto(result.getDouble("importo"));
				acquisto.setTotale(result.getDouble("totale"));
				acquisto.setCodiceAcquisto(result.getInt("codice_acquisto"));

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

				long tmpData = result.getDate("data").getTime();

				acquisto.setData(new java.util.Date(tmpData));
				acquisto.setImporto(result.getDouble("importo"));
				acquisto.setTotale(result.getDouble("totale"));
				acquisto.setCodiceAcquisto(result.getInt("codice_acquisto"));

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
