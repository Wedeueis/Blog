package acao;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PostDAO;
import modelos.Post;

public class InserePost implements Acao{
	public String executa(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		// obtem parametros do request
		String titulo = req.getParameter("titulo");
		SimpleDateFormat dt1 = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
		Date date = Calendar.getInstance().getTime();
		String data = dt1.format(date);
		String autor = "Wedeueis";
		String tag = req.getParameter("tag");
		StringBuffer conteudo = new StringBuffer(req.getParameter("conteudo"));
		int loc = (new String(conteudo)).indexOf('\n');
        while(loc > 0){
        	conteudo.replace(loc, loc+1, "<BR>");
            loc = (new String(conteudo)).indexOf('\n');
       }
		//String conteudo = req.getParameter("conteudo");
		// instancia objeto Post
		Post post = new Post();
		post.setData(data);
		post.setTitulo(titulo);		
		post.setAutor(autor);
		post.setTag(tag);
		post.setConteudo(conteudo.toString());
		PostDAO dao = new PostDAO();
		dao.insere(post);
		req.setAttribute("msg", "Post: " + post.getTitulo()
		+ " inserido com sucesso!" );
		return "/sucesso.jsp";
	}
}
