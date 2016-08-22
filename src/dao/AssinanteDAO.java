package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import jdbc.ConexaoBD;
import modelos.Assinante;

public class AssinanteDAO {
	private Connection connection;
	public AssinanteDAO(){
		this.connection = new ConexaoBD().getConexaoBD();
	}
	
	//Insere assinante
	public void insere(Assinante assinante) {
		String sql = "insert into assinantes (email) values (?)";
		try {
			PreparedStatement stmt = connection.prepareStatement(sql);
			// seta valores
			stmt.setString(1, assinante.getEmail());			
			//executa
			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	//Remove filme pelo id
	public void remove(Assinante assinante) {
		String sql = "DELETE FROM assinantes WHERE id=?";
		try {
			PreparedStatement stmt = connection.prepareStatement(sql);		
			stmt.setString(1, assinante.getEmail());
			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public List<Assinante> getLista() {
		List<Assinante> filmes = new ArrayList<Assinante>();
		PreparedStatement stmt;
		try {
			stmt = this.connection.prepareStatement("select * from assinantes order by nome");
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				Assinante filme = new Assinante();
				filme.setId(rs.getLong("id"));
				filme.setEmail(rs.getString("email"));
			}
			rs.close();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		return filmes;
	}
}
