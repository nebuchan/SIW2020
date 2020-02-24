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
			String insert = "insert into prodotto(id, nome, categoria, quantita_magazzino, quantita_minima, descrizione, prezzo, azienda,immagine) values (?,?,?,?,?,?,?,?,?)";
			PreparedStatement statement = connection.prepareStatement(insert);
			statement.setInt(1, prodotto.getiD());
			statement.setString(2, prodotto.getNome());
			statement.setString(3, prodotto.getCategoria());
			statement.setInt(4, prodotto.getQuantitaMagazzino());
			statement.setInt(5, prodotto.getQuantitaMin());
			statement.setString(6, prodotto.getDescrizione());
			statement.setDouble(7, prodotto.getPrezzo());
			statement.setString(8, prodotto.getEmailAzienda());
			statement.setString(9, prodotto.getImmagine());
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
			String query = "select * from prodotto where id = ?";
			statement = connection.prepareStatement(query);
			statement.setInt(1, iD);
			ResultSet result = statement.executeQuery();
			if (result.next()) {
				prodotto = new Prodotto();
				prodotto.setiD(result.getInt("id"));
				prodotto.setNome(result.getString("nome"));
				prodotto.setCategoria(result.getString("categoria"));
				prodotto.setQuantitaMagazzino(result.getInt("quantita_magazzino"));
				prodotto.setQuantitaMin(result.getInt("quantita_minima"));
				prodotto.setDescrizione(result.getString("descrizione"));
				prodotto.setPrezzo(result.getInt("prezzo"));
				prodotto.setEmailAzienda(result.getString("azienda"));
				prodotto.setImmagine(result.getString("immagine"));

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
				prodotto.setiD(result.getInt("id"));
				prodotto.setNome(result.getString("nome"));
				prodotto.setCategoria(result.getString("categoria"));
				prodotto.setQuantitaMagazzino(result.getInt("quantita_magazzino"));
				prodotto.setQuantitaMin(result.getInt("quantita_minima"));
				prodotto.setDescrizione(result.getString("descrizione"));
				prodotto.setPrezzo(result.getInt("prezzo"));
				prodotto.setEmailAzienda(result.getString("azienda"));
				prodotto.setImmagine(result.getString("immagine"));

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
			String update = "update prodotto SET nome = ?, categoria = ?, quantita_magazzino = ?, quantita_minima = ?, descrizione = ?, prezzo = ?, azienda = ? WHERE id = ?";
			PreparedStatement statement = connection.prepareStatement(update);
			statement.setString(1, prodotto.getNome());
			statement.setString(2, prodotto.getCategoria());
			statement.setInt(3, prodotto.getQuantitaMagazzino());
			statement.setInt(4, prodotto.getQuantitaMin());
			statement.setString(5, prodotto.getDescrizione());
			statement.setDouble(6, prodotto.getPrezzo());
			statement.setString(7, prodotto.getEmailAzienda());
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
			String delete = "delete FROM prodotto WHERE id = ? ";
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
	
	public List<Prodotto> findByCategory(String category){
		Connection connection = null;
		List<Prodotto> prodotti = new LinkedList<>();
		try {
			connection = this.dataSource.getConnection();
			Prodotto prodotto;
			PreparedStatement statement;
			String query = "select * from prodotto where categoria = ?";
			statement = connection.prepareStatement(query);
			statement.setString(1, category);
			ResultSet result = statement.executeQuery();
			while (result.next()) {
				prodotto = new Prodotto();
				prodotto.setiD(result.getInt("id"));
				prodotto.setNome(result.getString("nome"));
				prodotto.setCategoria(result.getString("categoria"));
				prodotto.setQuantitaMagazzino(result.getInt("quantita_magazzino"));
				prodotto.setQuantitaMin(result.getInt("quantita_minima"));
				prodotto.setDescrizione(result.getString("descrizione"));
				prodotto.setPrezzo(result.getInt("prezzo"));
				prodotto.setEmailAzienda(result.getString("azienda"));
				prodotto.setImmagine(result.getString("immagine"));
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

}
