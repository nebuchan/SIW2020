package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Cliente;
import persistence.DBManager;

public class ModificaPasswordCliente extends HttpServlet {

	private static final long serialVersionUID = 2997981279059481384L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String newPwd = req.getParameter("newPwd");
		
		System.out.println(newPwd);
		
		Cliente cliente = (Cliente) req.getSession().getAttribute("utente");
		
		cliente.setPassword(newPwd);
		
		DBManager.getInstance().modificaDatiCliente(cliente);
		
		req.getSession().setAttribute("utente", cliente);
	}
	
}
