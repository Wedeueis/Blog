package acao;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.FilmeDAO;
import modelos.Filme;

public class AlteraFilme implements Acao{
	public String executa(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		// obtem parametros do request
		Long id = Long.parseLong(req.getParameter("id"));
		Integer ano = Integer.parseInt(req.getParameter("ano"));
		Integer duracao = Integer.parseInt(req.getParameter("duracao"));
		String nome = req.getParameter("nome");
		String diretor = req.getParameter("diretor");
		String produtora = req.getParameter("produtora");
		String genero = req.getParameter("genero");
		String sinopse = req.getParameter("sinopse");
		String trailer = req.getParameter("trailer");
		// instancia objeto Filme
		Filme filme = new Filme();
		filme.setId(id);
		filme.setAno(ano);
		filme.setDuracao(duracao);
		filme.setNome(nome);
		filme.setDiretor(diretor);
		filme.setProdutora(produtora);
		filme.setGenero(genero);
		filme.setSinopse(sinopse);
		filme.setTrailer(trailer);
		FilmeDAO dao = new FilmeDAO();
		dao.altera(filme);
		req.setAttribute("msg", "Filme: " + filme.getNome() + " alterado com sucesso!");
		return "/sucesso.jsp";
	}
}
