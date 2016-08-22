 package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import jdbc.ConexaoBD;
import modelos.Filme;

public class FilmeDAO {
	private Connection connection;
	public FilmeDAO(){
		this.connection = new ConexaoBD().getConexaoBD();
	}
	
	//Insere filme
	public void insere(Filme filme) {
		String sql = "insert into filmes (nome, ano, duracao, diretor, produtora, genero, "
				+ "sinopse, trailer) values (?,?,?,?,?,?,?,?)";
		try {
			PreparedStatement stmt = connection.prepareStatement(sql);
			// seta valores
			stmt.setString(1, filme.getNome());
			stmt.setInt(2, filme.getAno());
			stmt.setInt(3, filme.getDuracao());
			stmt.setString(4, filme.getDiretor());
			stmt.setString(5, filme.getProdutora());
			stmt.setString(6, filme.getGenero());
			stmt.setString(7, filme.getSinopse());
			stmt.setString(8, filme.getTrailer());
			
			//executa
			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	//Remove filme pelo id
	public void remove(Filme filme) {
		String sql = "DELETE FROM filmes WHERE id=?";
		try {
			PreparedStatement stmt = connection.prepareStatement(sql);		
			stmt.setLong(1, filme.getId());
			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	//Altera um filme
	public void altera(Filme filme) {
		String sql = "update filmes set nome=?, ano=?, duracao=?, diretor=?, produtora=?,"
				+ " genero=?, sinopse=?, trailer=? where id=?";
		try {
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setString(1, filme.getNome());
			stmt.setInt(2, filme.getAno());
			stmt.setInt(3, filme.getDuracao());
			stmt.setString(4, filme.getDiretor());
			stmt.setString(5, filme.getProdutora());
			stmt.setString(6, filme.getGenero());
			stmt.setString(7, filme.getSinopse());
			stmt.setString(8, filme.getTrailer());
			stmt.setLong(9, filme.getId());
			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public List<Filme> getLista() {
		List<Filme> filmes = new ArrayList<Filme>();
		PreparedStatement stmt;
		try {
			stmt = this.connection.prepareStatement("select * from filmes order by nome");
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				Filme filme = new Filme();
				filme.setId(rs.getLong("id"));
				filme.setNome(rs.getString("nome"));
				filme.setAno(rs.getInt("ano"));
				filme.setDuracao(rs.getInt("duracao"));
				filme.setProdutora(rs.getString("produtora"));
				filme.setDiretor(rs.getString("diretor"));
				filme.setGenero(rs.getString("genero"));
				filme.setSinopse(rs.getString("sinopse"));
				filme.setTrailer(rs.getString("trailer"));
				filmes.add(filme);
			}
			rs.close();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		return filmes;
	}
	
	public List<Filme> buscaFilmePeloNome(String nome) {
		List<Filme> filmes = new ArrayList<Filme>();
		PreparedStatement stmt;
		String sql = "select * from filmes where nome=?";
		try {
			stmt = connection.prepareStatement(sql);
			stmt.setString(1, nome);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				Filme filme = new Filme();
				filme.setId(rs.getLong("id"));
				filme.setNome(rs.getString("nome"));
				filme.setAno(rs.getInt("ano"));
				filme.setDuracao(rs.getInt("duracao"));
				filme.setProdutora(rs.getString("produtora"));
				filme.setDiretor(rs.getString("diretor"));
				filme.setGenero(rs.getString("genero"));
				filme.setSinopse(rs.getString("sinopse"));
				filme.setTrailer(rs.getString("trailer"));
				filmes.add(filme);
			}
			rs.close();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		return filmes;
		}
}