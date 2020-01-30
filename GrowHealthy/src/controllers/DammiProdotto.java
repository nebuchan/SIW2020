package controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Azienda;
import model.Prodotto;
import persistence.DBManager;

public class DammiProdotto extends HttpServlet {

	private static final long serialVersionUID = 3063537202686077481L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String idProdotto=req.getParameter("id");
		
		Prodotto prodotto = DBManager.getInstance().dammiProdotto(Integer.parseInt(idProdotto));
		Azienda aziendaProdotto = DBManager.getInstance().dammiAzienda(prodotto.getEmailAzienda());
		
		req.setAttribute("nomeAziendaProdotto", aziendaProdotto.getRagioneSociale());
		req.setAttribute("categoriaProdotto", prodotto.getCategoria());
		req.setAttribute("nomeProdotto", prodotto.getNome());
		req.setAttribute("idProdotto", prodotto.getiD());
		req.setAttribute("prezzoProdotto", prodotto.getPrezzo());
		req.setAttribute("descrizioneProdotto", prodotto.getDescrizione());
		req.setAttribute("quantitaProdotto", prodotto.getQuantitaMagazzino());
		req.setAttribute("quantitaMinimaProdotto", prodotto.getQuantitaMin());
		
		RequestDispatcher rd = req.getRequestDispatcher("product.jsp");
		rd.forward(req, resp);
	}

}
