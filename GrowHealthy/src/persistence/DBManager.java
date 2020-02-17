package persistence;

import java.util.List;

import model.Acquisto;
import model.Azienda;
import model.CategoriaProdotto;
import model.Cliente;
import model.Prodotto;
import persistence.dao.AcquistoDao;
import persistence.dao.AziendaDao;
import persistence.dao.CategoriaProdottoDao;
import persistence.dao.ClienteDao;
import persistence.dao.ProdottoDao;
import persistence.dao.jdbc.AcquistoDaoJDBC;
import persistence.dao.jdbc.AziendaDaoJDBC;
import persistence.dao.jdbc.CategoriaProdottoDaoJDBC;
import persistence.dao.jdbc.ClienteDaoJDBC;
import persistence.dao.jdbc.ProdottoDaoJDBC;

public class DBManager {

	private static DataSource dataSource;

	public static DBManager instance = null;

	public static DBManager getInstance() {
		if (instance == null) {
			instance = new DBManager();
		}
		return instance;
	}

	private DBManager() {
		try {
			Class.forName("org.postgresql.Driver").newInstance();
			dataSource = new DataSource("jdbc:postgresql://packy.db.elephantsql.com:5432/scqjcqio", "scqjcqio",
					"wynuYWnkYD7uF6IIIkWyj25hlvlUYs2S");
		} catch (InstantiationException | IllegalAccessException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	private ClienteDao getClienteDao() {
		return new ClienteDaoJDBC(dataSource);
	}

	private AziendaDao getAziendaDao() {
		return new AziendaDaoJDBC(dataSource);
	}

	private ProdottoDao getProdottoDao() {
		return new ProdottoDaoJDBC(dataSource);
	}

	private CategoriaProdottoDao getCategoriaProdottoDao() {
		return new CategoriaProdottoDaoJDBC(dataSource);
	}

	private AcquistoDao getAcquistoDao() {
		return new AcquistoDaoJDBC(dataSource);
	}

	public List<Cliente> dammiClienti() {
		return getClienteDao().findAll();
	}

	public Cliente dammiCliente(String email) {
		return getClienteDao().findByPrimaryKey(email);
	}

	public List<Azienda> dammiAziende() {
		return getAziendaDao().findAll();
	}

	public Azienda dammiAzienda(String email) {
		return getAziendaDao().findByPrimaryKey(email);
	}

	public List<Prodotto> dammiProdotti() {
		return getProdottoDao().findAll();
	}

	public Prodotto dammiProdotto(int iD) {
		return getProdottoDao().findByPrimaryKey(iD);
	}

	public CategoriaProdotto dammiCategoriaProdotto(String categoria) {
		return getCategoriaProdottoDao().findByPrimaryKey(categoria);
	}

	public List<CategoriaProdotto> dammiCategorieProdotti() {
		return getCategoriaProdottoDao().findAll();
	}

	public Acquisto dammiAcquisto(int iD) {
		return getAcquistoDao().findByPrimaryKey(iD);
	}

	public List<Acquisto> dammiAcquisti() {
		return getAcquistoDao().findAll();
	}

	public void inserisciCliente(Cliente cliente) {
		getClienteDao().save(cliente);
	}

	public void inserisciAzienda(Azienda azienda) {
		getAziendaDao().save(azienda);
	}

	public void inserisciProdotto(Prodotto prodotto) {
		getProdottoDao().save(prodotto);
	}
	
	public void inserisciAcquisto(Acquisto acquisto) {
		getAcquistoDao().save(acquisto);
	}

	public List<Prodotto> dammiProdottiPerCategoria(String categoria) {
		List<Prodotto> prodotti = getProdottoDao().findByCategory(categoria);

		return prodotti;
	}

	public void eliminaProdotto(Prodotto p) {
		getProdottoDao().delete(p);

	}
	
	public void aggiornaProdotto(Prodotto p) {
		getProdottoDao().update(p);
	}
	
	public void salvaAcquisto(Acquisto a) {
		getAcquistoDao().save(a);
	}

}
