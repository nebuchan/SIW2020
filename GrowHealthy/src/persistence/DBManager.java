package persistence;

import java.util.List;

import model.Acquisto;
import model.Azienda;
import model.CategoriaProdotto;
import model.Cliente;
import model.Prodotto;
import model.Terreno;
import persistence.dao.AcquistoDao;
import persistence.dao.AziendaDao;
import persistence.dao.CategoriaProdottoDao;
import persistence.dao.ClienteDao;
import persistence.dao.ProdottoDao;
import persistence.dao.TerrenoDao;
import persistence.dao.jdbc.AcquistoDaoJDBC;
import persistence.dao.jdbc.AziendaDaoJDBC;
import persistence.dao.jdbc.CategoriaProdottoDaoJDBC;
import persistence.dao.jdbc.ClienteDaoJDBC;
import persistence.dao.jdbc.ProdottoDaoJDBC;
import persistence.dao.jdbc.TerrenoDaoJDBC;


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
	
	//PERSISTENCE DAO
	private CategoriaProdottoDao getCategoriaProdottoDao() { return new CategoriaProdottoDaoJDBC(dataSource); }
	private ClienteDao getClienteDao() { return new ClienteDaoJDBC(dataSource); }
	private AziendaDao getAziendaDao() { return new AziendaDaoJDBC(dataSource); }
	private ProdottoDao getProdottoDao() { return new ProdottoDaoJDBC(dataSource); }
	private AcquistoDao getAcquistoDao() { return new AcquistoDaoJDBC(dataSource); }
	private TerrenoDao getTerrenoDao() { return new TerrenoDaoJDBC(dataSource); }
	
	//ACQUISTODAO
	public void inserisciAcquisto(Acquisto acquisto) { getAcquistoDao().save(acquisto); }
	public Acquisto dammiAcquisto(int iD) { return getAcquistoDao().findByPrimaryKey(iD); }
	public List<Acquisto> dammiAcquisti() { return getAcquistoDao().findAll(); }
	public void salvaAcquisto(Acquisto a) { getAcquistoDao().save(a); }
	public List<Acquisto> dammiAcquistiPerCliente(Cliente cliente) { return getAcquistoDao().findByClient(cliente); }


	//AZIENDADAO
	public void inserisciAzienda(Azienda azienda) { getAziendaDao().save(azienda); }
	public Azienda dammiAzienda(String email) { return getAziendaDao().findByPrimaryKey(email); }
	public List<Azienda> dammiAziende() { return getAziendaDao().findAll(); }
	public void modificaAzienda(Azienda a) { getAziendaDao().update(a); }

	//CATEGORIAPRODOTTODAO
	public CategoriaProdotto dammiCategoriaProdotto(String categoria) { return getCategoriaProdottoDao().findByPrimaryKey(categoria); }
	public List<CategoriaProdotto> dammiCategorieProdotti() { return getCategoriaProdottoDao().findAll(); }
	
	//CLIENTEDAO
	public void inserisciCliente(Cliente cliente) { getClienteDao().save(cliente); }
	public Cliente dammiCliente(String email) { return getClienteDao().findByPrimaryKey(email);}
	public List<Cliente> dammiClienti() { return getClienteDao().findAll(); }
	public void modificaDatiCliente(Cliente cliente) { getClienteDao().update(cliente); }

	//PRODOTTODAO
	public void inserisciProdotto(Prodotto prodotto) { getProdottoDao().save(prodotto); }
	public Prodotto dammiProdotto(int iD) { return getProdottoDao().findByPrimaryKey(iD); }
	public List<Prodotto> dammiProdotti() { return getProdottoDao().findAll(); }
	public void eliminaProdotto(Prodotto p) { getProdottoDao().delete(p); }
	public void aggiornaProdotto(Prodotto p) { getProdottoDao().update(p); }
	public List<Prodotto> dammiProdottiPerCategoria(String categoria) {
		List<Prodotto> prodotti = getProdottoDao().findByCategory(categoria);
		return prodotti;
	}

	//TERRENODAO
	public void inserisciTerreno(Terreno terreno) { getTerrenoDao().save(terreno); }
	public Terreno dammiTerreno(int id) { return getTerrenoDao().findByPrimaryKey(id); }
	public List<Terreno> dammiTerreni() { return getTerrenoDao().findAll(); }
	public void modificaDatiTerreno(Terreno terreno) { getTerrenoDao().update(terreno); }
	
}
