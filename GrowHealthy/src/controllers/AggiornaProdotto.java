package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Prodotto;
import persistence.DBManager;


public class AggiornaProdotto  extends HttpServlet {

	private static final long serialVersionUID =  961175188523103719L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String id=(String) req.getSession().getAttribute("id");
		String email=(String) req.getSession().getAttribute("companyEmail");
		String nome=req.getParameter("nomeProdotto");
		String categoria=req.getParameter("categoria");
		String quantitaDisponibile= req.getParameter("quantitaDisponibile");
		String quantitaMinima= req.getParameter("quantitaMinima");
		String descrizione= req.getParameter("descrizione");
		String prezzo= req.getParameter("prezzo");
		
		Prodotto prodotto = new Prodotto();
		prodotto.setiD(Integer.parseInt(id));
		prodotto.setNome(nome);
		prodotto.setCategoria(categoria);
		prodotto.setQuantitaMagazzino(Integer.parseInt(quantitaDisponibile));
		prodotto.setQuantitaMin(Integer.parseInt(quantitaMinima));
		prodotto.setDescrizione(descrizione);
		prodotto.setPrezzo(Double.parseDouble(prezzo));
		prodotto.setEmailAzienda(email);
		
		DBManager.getInstance().aggiornaProdotto(prodotto);
		
		resp.sendRedirect(req.getContextPath() + "/mycategories.jsp");
	}

}