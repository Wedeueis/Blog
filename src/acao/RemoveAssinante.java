package acao;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AssinanteDAO;
import modelos.Assinante;

public class RemoveAssinante {
	public String executa(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		// obtem parametros do request
		String email = req.getParameter("email");
		Long id = Long.parseLong(req.getParameter("id"));
		// instancia objeto Filme
		Assinante assinante = new Assinante();
		assinante.setId(id);
		assinante.setEmail(email);
		AssinanteDAO dao = new AssinanteDAO();
		dao.remove(assinante);
		req.setAttribute("msg", "Assinante de id = " + assinante.getId()
		+ " removido com sucesso!");
		return "/sucesso.jsp";
	}
}
