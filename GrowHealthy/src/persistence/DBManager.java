package persistence;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Properties;

import model.Cliente;
import persistence.dao.AziendaDao;
import persistence.dao.ClienteDao;
import persistence.dao.ProdottoDao;
import persistence.dao.SemeDao;
import persistence.dao.TerrenoDao;
import persistence.dao.jdbc.AziendaDaoJDBC;
import persistence.dao.jdbc.ClienteDaoJDBC;
import persistence.dao.jdbc.ProdottoDaoJDBC;
import persistence.dao.jdbc.SemeDaoJDBC;
import persistence.dao.jdbc.TerrenoDaoJDBC;

public class DBManager {
	private static DataSource dataSource;
	private static Connection conn=null;
	
	public static DBManager instance = null;

	public static DBManager getInstance() {
		if (instance == null) {
			instance = new DBManager();
		}
		return instance;
	}

	private DBManager() {
		String url = "jdbc:postgresql://packy.db.elephantsql.com:5432/scqjcqio";
		Properties props = new Properties();
		props.setProperty("user","scqjcqio");
		props.setProperty("password","wynuYWnkYD7uF6IIIkWyj25hlvlUYs2S");
		try 
		{
			Class.forName("org.postgresql.Driver");
		conn= DriverManager.getConnection(url, props);
		}
		catch(Exception e) {e.printStackTrace();}
		

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

	private TerrenoDao getTerrenoDao() {
		return new TerrenoDaoJDBC(dataSource);
	}

	private SemeDao getSemeDao() {
		return new SemeDaoJDBC(dataSource);
	}

	public List<Cliente> dammiClienti(){
		return getClienteDao().findAll();
	}
	
	public Cliente dammiCliente(String codiceFiscale) {
		return getClienteDao().findByPrimaryKey(codiceFiscale);
	}
	
	public boolean autenticazione(String email,String password)
	{	
		boolean st=false;
		PreparedStatement statement=null;
		try {
			statement = conn.prepareStatement(
					"select Email,Password from Cliente where Email=? and Password=?");
			statement.setString(1, email);
			statement.setString(2, password);
			ResultSet rs=statement.executeQuery();
			st=rs.next();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return st;
	}
}
