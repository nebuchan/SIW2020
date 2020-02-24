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


public class ModificaProdotto  extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String id=req.getParameter("id");
		Prodotto prodotto = DBManager.getInstance().dammiProdotto(Integer.parseInt(id));
		Azienda aziendaProdotto = DBManager.getInstance().dammiAzienda(prodotto.getEmailAzienda());
		
		req.getSession().setAttribute("id", id);
		req.getSession().setAttribute("companyEmail", prodotto.getEmailAzienda());
		req.getSession().setAttribute("name", prodotto.getNome());
		req.getSession().setAttribute("companyName", aziendaProdotto.getRagioneSociale());
		req.getSession().setAttribute("category", prodotto.getCategoria());
		req.getSession().setAttribute("stockQuantity",prodotto.getQuantitaMagazzino());
		req.getSession().setAttribute("minimumQuantity",prodotto.getQuantitaMin());
		req.getSession().setAttribute("description", prodotto.getDescrizione());
		req.getSession().setAttribute("price", prodotto.getPrezzo());
		req.getSession().setAttribute("image",prodotto.getImmagine());
		
		RequestDispatcher rd = req.getRequestDispatcher("modificaProdotto.jsp");
		rd.forward(req, resp);
	}

}