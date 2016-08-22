package acao;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PostDAO;
import modelos.Post;

public class AlteraPost implements Acao{
	public String executa(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		// obtem parametros do request
		Long id = Long.parseLong(req.getParameter("id"));
		String titulo = req.getParameter("titulo");
		String data = req.getParameter("data");
		String autor = req.getParameter("autor");
		String tag = req.getParameter("tag");
		String conteudo = req.getParameter("conteudo");
		// instancia objeto Post
		Post post = new Post();
		post.setId(id);
		post.setData(data);
		post.setTitulo(titulo);		
		post.setAutor(autor);
		post.setTag(tag);
		post.setConteudo(conteudo);
		PostDAO dao = new PostDAO();
		dao.altera(post);
		req.setAttribute("msg", "Post: " + post.getTitulo() + " alterado com sucesso!");
		return "/sucesso.jsp";
	}
}
