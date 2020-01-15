package persistence.dao.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import model.Prodotto;
import persistence.DataSource;
import persistence.dao.ProdottoDao;

public class ProdottoDaoJDBC implements ProdottoDao {
	private DataSource dataSource;

	public ProdottoDaoJDBC(DataSource dataSource) {
		super();
		this.dataSource = dataSource;
	}

	@Override
	public void save(Prodotto prodotto) {
		Connection connection = null;

		try {
			connection = this.dataSource.getConnection();
			String insert = "insert into prodotto(iD, azienda, nome, categoria, quantità_magazzino, quantità_minima, descrizione, prezzo) values (?,?,?,?,?,?,?,?)";
			PreparedStatement statement = connection.prepareStatement(insert);
			statement.setInt(1, prodotto.getiD());
			statement.setInt(2, prodotto.getIdAzienda());
			statement.setString(3, prodotto.getNome());
			statement.setString(4, prodotto.getCategoria());
			statement.setInt(5, prodotto.getQuantitaMagazzino());
			statement.setInt(6, prodotto.getQuantitaMin());
			statement.setString(7, prodotto.getDescrizione());
			statement.setDouble(8, prodotto.getPrezzo());
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
	public Prodotto findByPrimaryKey(int iD) {
		Connection connection = null;
		Prodotto prodotto = null;
		try {
			connection = this.dataSource.getConnection();
			PreparedStatement statement;
			String query = "select * from prodotto where iD = ?";
			statement = connection.prepareStatement(query);
			statement.setInt(1, iD);
			ResultSet result = statement.executeQuery();
			if (result.next()) {
				prodotto = new Prodotto();
				prodotto.setiD(result.getInt("iD"));
				prodotto.setIdAzienda(result.getInt("azienda"));
				prodotto.setNome(result.getString("nome"));
				prodotto.setCategoria(result.getString("categoria"));
				prodotto.setQuantitaMagazzino(result.getInt("quantità_magazzino"));
				prodotto.setQuantitaMin(result.getInt("quantità_minima"));
				prodotto.setDescrizione(result.getString("descrizione"));
				prodotto.setPrezzo(result.getInt("prezzo"));

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
		return prodotto;
	}

	@Override
	public List<Prodotto> findAll() {
		Connection connection = null;
		List<Prodotto> prodotti = new LinkedList<>();
		try {
			connection = this.dataSource.getConnection();
			Prodotto prodotto;
			PreparedStatement statement;
			String query = "select * from prodotto";
			statement = connection.prepareStatement(query);
			ResultSet result = statement.executeQuery();
			while (result.next()) {
				prodotto = new Prodotto();
				prodotto.setiD(result.getInt("iD"));
				prodotto.setIdAzienda(result.getInt("azienda"));
				prodotto.setNome(result.getString("nome"));
				prodotto.setCategoria(result.getString("categoria"));
				prodotto.setQuantitaMagazzino(result.getInt("quantità_magazzino"));
				prodotto.setQuantitaMin(result.getInt("quantità_minima"));
				prodotto.setDescrizione(result.getString("descrizione"));
				prodotto.setPrezzo(result.getInt("prezzo"));

				prodotti.add(prodotto);
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
		return prodotti;
	}

	@Override
	public void update(Prodotto prodotto) {
		Connection connection = null;
		try {
			connection = this.dataSource.getConnection();
			String update = "update prodotto SET azienda = ?, nome = ?, categoria = ?, quantità_magazzino = ?, quantità_minima = ?, descrizione = ?, prezzo = ? WHERE iD = ?";
			PreparedStatement statement = connection.prepareStatement(update);
			statement.setInt(1, prodotto.getIdAzienda());
			statement.setString(2, prodotto.getNome());
			statement.setString(3, prodotto.getCategoria());
			statement.setInt(4, prodotto.getQuantitaMagazzino());
			statement.setInt(5, prodotto.getQuantitaMin());
			statement.setString(6, prodotto.getDescrizione());
			statement.setDouble(7, prodotto.getPrezzo());
			statement.setInt(8, prodotto.getiD());

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
	public void delete(Prodotto prodotto) {
		Connection connection = null;
		try {
			connection = this.dataSource.getConnection();
			String delete = "delete FROM prodotto WHERE iD = ? ";
			PreparedStatement statement = connection.prepareStatement(delete);
			statement.setInt(1, prodotto.getiD());
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
