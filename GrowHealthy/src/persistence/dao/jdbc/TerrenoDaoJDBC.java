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
	public Terreno findByPrimaryKey(int id) {
		Connection connection = null;
		Terreno terreno = null;
		try {
			connection = this.dataSource.getConnection();
			PreparedStatement statement;
			String query = "select * from terreno where id = ?";
			statement = connection.prepareStatement(query);
			statement.setInt(1, id);
			ResultSet result = statement.executeQuery();
			if (result.next()) {
				terreno = new Terreno();
				terreno.setId(result.getInt("id"));
				terreno.setDimensione_mq(result.getInt("dimensione_mq"));
				terreno.setLocazione(result.getString("locazione"));
				terreno.setDescrizione(result.getString("descrizione"));
				terreno.setCostoTerreno(result.getInt("costoTerreno"));
				terreno.setServiziOfferti(result.getString("serviziOfferti"));
				terreno.setEmailAzienda(result.getString("azienda"));

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
				terreno.setId(result.getInt("id"));
				terreno.setDimensione_mq(result.getInt("dimensione_mq"));
				terreno.setLocazione(result.getString("locazione"));
				terreno.setDescrizione(result.getString("descrizione"));
				terreno.setCostoTerreno(result.getInt("costoTerreno"));
				terreno.setServiziOfferti(result.getString("descrizione"));
				terreno.setEmailAzienda(result.getString("azienda"));
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
	public void save(Terreno terreno) {
		Connection connection = null;
		try {
			connection = this.dataSource.getConnection();
			String insert = "insert into terreno(id, dimensione_mq, locazione, descrizione, costoTerreno, serviziOfferti, azienda) values (?,?,?,?,?,?,?)";
			PreparedStatement statement = connection.prepareStatement(insert);
			statement.setInt(1, terreno.getId());
			statement.setInt(2, terreno.getDimensione_mq());
			statement.setString(3, terreno.getLocazione());
			statement.setString(4, terreno.getDescrizione());
			statement.setInt(5, terreno.getCostoTerreno());
			statement.setString(6, terreno.getServiziOfferti());		
			statement.setString(7, terreno.getEmailAzienda());
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
	public void update(Terreno terreno) {
		Connection connection = null;
		try {
			connection = this.dataSource.getConnection();
			String update = "update terreno SET id = ?, dimensione_mq = ?, locazione = ?, descrizione = ?, costoTerreno = ?, serviziOfferti = ?, azienda = ? WHERE id = ?";
			PreparedStatement statement = connection.prepareStatement(update);
			statement.setInt(1, terreno.getId());
			statement.setInt(2, terreno.getDimensione_mq());
			statement.setString(3, terreno.getLocazione());
			statement.setString(4, terreno.getDescrizione());
			statement.setInt(5, terreno.getCostoTerreno());
			statement.setString(6, terreno.getServiziOfferti());		
			statement.setString(7, terreno.getEmailAzienda());
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
			String delete = "delete FROM terreno WHERE id = ? ";
			PreparedStatement statement = connection.prepareStatement(delete);
			statement.setInt(1, terreno.getId());
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
