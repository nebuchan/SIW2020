package controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Azienda;
import model.CategoriaProdotto;
import persistence.DBManager;

public class ControllaProdotto extends HttpServlet {

	private static final long serialVersionUID = 8348860825733737032L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println(req.getParameter("nomeProdotto"));
		req.getSession().setAttribute("name", req.getParameter("nomeProdotto"));
		req.getSession().setAttribute("category", req.getParameter("categoriaProdotto"));
		req.getSession().setAttribute("stockQuantity", req.getParameter("quantitaMagazzino"));
		req.getSession().setAttribute("minimumQuantity", req.getParameter("quantitaMinima"));
		req.getSession().setAttribute("description", req.getParameter("descrizioneProdotto"));
		req.getSession().setAttribute("price", req.getParameter("prezzoProdotto"));
	
		RequestDispatcher rd = req.getRequestDispatcher("popupInsertProduct.jsp");
		rd.forward(req, resp);
		}
}
