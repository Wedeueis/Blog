package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import jdbc.ConexaoBD;
import modelos.Post;

public class PostDAO {
		private Connection connection;
		public PostDAO(){
			this.connection = new ConexaoBD().getConexaoBD();
		}
		
		//Insere post
		public void insere(Post post) {
			String sql = "insert into posts (titulo, data, autor, tag, conteudo) values (?,?,?,?,?)";
			try {
				PreparedStatement stmt = connection.prepareStatement(sql);
				// seta valores
				stmt.setString(1, post.getTitulo());
				stmt.setString(2, post.getData());
				stmt.setString(3, post.getAutor());
				stmt.setString(4, post.getTag());
				stmt.setString(5, post.getConteudo());
				
				//executa
				stmt.execute();
				stmt.close();
			} catch (SQLException e) {
				throw new RuntimeException(e);
			}
		}
		
		//Remove post pelo id
		public void remove(Post post) {
			String sql = "DELETE FROM posts WHERE id=?";
			try {
				PreparedStatement stmt = connection.prepareStatement(sql);		
				stmt.setString(1, post.getTitulo());
				stmt.execute();
				stmt.close();
			} catch (SQLException e) {
				throw new RuntimeException(e);
			}
		}
		
		//Altera um post
		public void altera(Post post) {
			String sql = "update posts set titulo=?, data=?, autor=?, tag=?, conteudo=? where id=?";
			try {
				PreparedStatement stmt = connection.prepareStatement(sql);
				stmt.setString(1, post.getTitulo());
				stmt.setString(2, post.getData());
				stmt.setString(3, post.getAutor());
				stmt.setString(4, post.getTag());
				stmt.setString(5, post.getConteudo());
				stmt.setLong(6, post.getId());
				stmt.execute();
				stmt.close();
			} catch (SQLException e) {
				throw new RuntimeException(e);
			}
		}
		
		public List<Post> getLista() {
			List<Post> posts = new ArrayList<Post>();
			PreparedStatement stmt;
			try {
				stmt = this.connection.prepareStatement("select * from posts order by titulo");
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					Post post = new Post();
					post.setId(rs.getLong("id"));
					post.setData(rs.getString("data"));
					post.setTitulo(rs.getString("titulo"));		
					post.setAutor(rs.getString("autor"));
					post.setTag(rs.getString("tag"));
					post.setConteudo(rs.getString("conteudo"));
					posts.add(post);
				}
				rs.close();
				stmt.close();
			} catch (SQLException e) {
				throw new RuntimeException(e);
			}
			return posts;
		}
		
		public List<Post> buscaPeloTitulo(String titulo) {
			List<Post> posts = new ArrayList<Post>();
			PreparedStatement stmt;
			String sql = "select * from posts where titulo=?";
			try {
				stmt = connection.prepareStatement(sql);
				stmt.setString(1, titulo);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					Post post = new Post();
					post.setId(rs.getLong("id"));
					post.setTitulo(rs.getString("titulo"));	
					post.setData(rs.getString("data"));	
					post.setAutor(rs.getString("autor"));
					post.setTag(rs.getString("tag"));
					post.setConteudo(rs.getString("conteudo"));
					posts.add(post);
				}
				rs.close();
				stmt.close();
			} catch (SQLException e) {
				throw new RuntimeException(e);
			}
			return posts;
		}
		
		public List<Post> buscaPeloTema(String tag) {
			List<Post> posts = new ArrayList<Post>();
			PreparedStatement stmt;
			String sql = "select * from posts where tag=?";
			try {
				stmt = connection.prepareStatement(sql);
				stmt.setString(1, tag);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					Post post = new Post();
					post.setId(rs.getLong("id"));
					post.setTitulo(rs.getString("titulo"));	
					post.setData(rs.getString("data"));	
					post.setAutor(rs.getString("autor"));
					post.setTag(rs.getString("tag"));
					post.setConteudo(rs.getString("conteudo"));
					posts.add(post);
				}
				rs.close();
				stmt.close();
			} catch (SQLException e) {
				throw new RuntimeException(e);
			}
			return posts;
		}
	}
