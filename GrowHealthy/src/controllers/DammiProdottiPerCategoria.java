package controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Prodotto;
import persistence.DBManager;

public class DammiProdottiPerCategoria extends HttpServlet {

	private static final long serialVersionUID = -6526709270544057262L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String categoria = req.getParameter("categoria");

		List<Prodotto> prodotti = DBManager.getInstance().dammiProdottiPerCategoria(categoria);

		if (!prodotti.isEmpty()) {
			req.setAttribute("products", prodotti);

			RequestDispatcher rd = req.getRequestDispatcher("categories.jsp");
			rd.forward(req, resp);
		}else {
			req.setAttribute("", "Nessun prodotto per questa categoria");
			
			RequestDispatcher rd = req.getRequestDispatcher("");
			rd.forward(req, resp);
			
		}
	}

}
