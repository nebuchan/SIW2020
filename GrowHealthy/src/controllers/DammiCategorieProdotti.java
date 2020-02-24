package controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.CategoriaProdotto;
import persistence.DBManager;


public class DammiCategorieProdotti extends HttpServlet {

	private static final long serialVersionUID = 8348860825733737032L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<CategoriaProdotto> categorieProdotti = DBManager.getInstance().dammiCategorieProdotti();

		req.setAttribute("categories", categorieProdotti);

		RequestDispatcher rd = req.getRequestDispatcher("categories.jsp");
		rd.forward(req, resp);
	}
	
}
