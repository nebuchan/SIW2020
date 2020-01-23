package controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Prodotto;
import persistence.DBManager;

public class DammiProdotto extends HttpServlet {

	private static final long serialVersionUID = 3063537202686077481L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
//		String idP = req.getParameter("idProdotto");
		
//		Prodotto prodotto = DBManager.getInstance().dammiProdotto(Integer.parseInt(idP));
		
		
		System.out.println(req.getParameter("id"));
		
		RequestDispatcher rd = req.getRequestDispatcher("product.jsp");
		rd.forward(req, resp);
	}

}
