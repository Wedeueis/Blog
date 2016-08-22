package acao;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AssinanteDAO;
import modelos.Assinante;

public class InsereAssinante implements Acao {
	public String executa(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		// obtem parametros do request
		String email = req.getParameter("email");
		// instancia objeto Filme
		Assinante assinante = new Assinante();
		assinante.setEmail(email);
		AssinanteDAO dao = new AssinanteDAO();
		dao.insere(assinante);
		req.setAttribute("msg", "Email: " + assinante.getEmail()
		+ " inserido com sucesso!");
		return "/sucesso.jsp";
	}
}
