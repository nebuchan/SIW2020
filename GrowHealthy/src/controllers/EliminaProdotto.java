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

public class EliminaProdotto  extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		String id=req.getParameter("id");
		Prodotto prodotto= DBManager.getInstance().dammiProdotto(Integer.parseInt(id));
		DBManager.getInstance().eliminaProdotto(prodotto);
			
		RequestDispatcher rd = req.getRequestDispatcher("mycategories.jsp");
		rd.forward(req, resp);
	}

}
