package controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ControllaTerreno extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.getSession().setAttribute("position", req.getParameter("posizione"));
		req.getSession().setAttribute("dimension", req.getParameter("dimensione"));
		req.getSession().setAttribute("service", req.getParameter("servizioOfferto"));
		req.getSession().setAttribute("price", req.getParameter("costo"));
		req.getSession().setAttribute("description", req.getParameter("descrizione"));
	
		RequestDispatcher rd = req.getRequestDispatcher("popupInsertTerrain.jsp");
		rd.forward(req, resp);
		}
}
