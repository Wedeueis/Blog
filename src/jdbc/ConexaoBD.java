package jdbc;

import java.sql.*;

public class ConexaoBD {
	public Connection getConexaoBD(){
		System.out.println("Conectando ao banco de dados");
		try {
		String url = "jdbc:mysql://localhost/blogdiy";
			Class.forName("com.mysql.jdbc.Driver"); 
			return DriverManager.getConnection(url, "root", "root");
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
}
