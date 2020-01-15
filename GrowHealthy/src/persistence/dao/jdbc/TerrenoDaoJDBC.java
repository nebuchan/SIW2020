package persistence.dao.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import model.Terreno;
import persistence.DataSource;
import persistence.dao.TerrenoDao;

public class TerrenoDaoJDBC implements TerrenoDao {
	private DataSource dataSource;

	public TerrenoDaoJDBC(DataSource dataSource) {
		super();
		this.dataSource = dataSource;
	}

	@Override
	public void save(Terreno terreno) {
		Connection connection = null;

		try {
			connection = this.dataSource.getConnection();
			String insert = "insert into terreno(iD, dimensione, descrizione, città, provincia, via, costo_fitto, azienda) values (?,?,?,?,?,?,?,?)";
			PreparedStatement statement = connection.prepareStatement(insert);
			statement.setInt(1, terreno.getiD());
			statement.setInt(2, terreno.getDimensione());
			statement.setString(3, terreno.getDescrizione());
			statement.setString(4, terreno.getCitta());
			statement.setString(5, terreno.getProvincia());
			statement.setString(6, terreno.getVia());
			statement.setInt(7, terreno.getCostoFitto());
			statement.setInt(8, terreno.getIdAzienda());

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
	public Terreno findByPrimaryKey(int iD) {
		Connection connection = null;
		Terreno terreno = null;
		try {
			connection = this.dataSource.getConnection();
			PreparedStatement statement;
			String query = "select * from terreno where iD = ?";
			statement = connection.prepareStatement(query);
			statement.setInt(1, iD);
			ResultSet result = statement.executeQuery();
			if (result.next()) {
				terreno = new Terreno();
				terreno.setiD(result.getInt("iD"));
				terreno.setDimensione(result.getInt("dimensione"));
				terreno.setDescrizione(result.getString("descrizone"));
				terreno.setCitta(result.getString("città"));
				terreno.setProvincia(result.getString("provincia"));
				terreno.setVia(result.getString("via"));
				terreno.setCostoFitto(result.getInt("costo_fitto"));
				terreno.setIdAzienda(result.getInt("azienda"));

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
		return terreno;
	}

	@Override
	public List<Terreno> findAll() {
		Connection connection = null;
		List<Terreno> terreni = new LinkedList<>();
		try {
			connection = this.dataSource.getConnection();
			Terreno terreno;
			PreparedStatement statement;
			String query = "select * from terreno";
			statement = connection.prepareStatement(query);
			ResultSet result = statement.executeQuery();
			while (result.next()) {
				terreno = new Terreno();
				terreno.setiD(result.getInt("iD"));
				terreno.setDimensione(result.getInt("dimensione"));
				terreno.setDescrizione(result.getString("descrizone"));
				terreno.setCitta(result.getString("città"));
				terreno.setProvincia(result.getString("provincia"));
				terreno.setVia(result.getString("via"));
				terreno.setCostoFitto(result.getInt("costo_fitto"));
				terreno.setIdAzienda(result.getInt("azienda"));

				terreni.add(terreno);
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
		return terreni;
	}

	@Override
	public void update(Terreno terreno) {
		Connection connection = null;
		try {
			connection = this.dataSource.getConnection();
			String update = "update terreno SET dimensione = ?, descrizione = ?, città = ?, provincia = ?, via = ?, costo_fitto = ?, azienda = ? WHERE iD = ?";
			PreparedStatement statement = connection.prepareStatement(update);
			statement.setInt(1, terreno.getDimensione());
			statement.setString(2, terreno.getDescrizione());
			statement.setString(3, terreno.getCitta());
			statement.setString(4, terreno.getProvincia());
			statement.setString(5, terreno.getVia());
			statement.setInt(6, terreno.getCostoFitto());
			statement.setInt(7, terreno.getIdAzienda());
			statement.setInt(8, terreno.getiD());

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
	public void delete(Terreno terreno) {
		Connection connection = null;
		try {
			connection = this.dataSource.getConnection();
			String delete = "delete FROM terreno WHERE iD = ? ";
			PreparedStatement statement = connection.prepareStatement(delete);
			statement.setInt(1, terreno.getiD());
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
