package persistence;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DataSource {
	private String url;
	private String username;
	private String password;

	public DataSource(String url, String username, String password) {
		super();
		this.url = url;
		this.username = username;
		this.password = password;
	}

	public Connection getConnection() throws SQLException {
		Connection connection = DriverManager.getConnection(url, username, password);
		return connection;
	}

}
