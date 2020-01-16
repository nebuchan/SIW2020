package controllers;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Azienda;
import model.Cliente;
import persistence.DBManager;

public class Login extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");

		PrintWriter out = response.getWriter();

		String email = request.getParameter("email");
		String password = request.getParameter("password");

		Cliente cliente = DBManager.getInstance().dammiCliente(email);

		Azienda azienda = DBManager.getInstance().dammiAzienda(email);

		if (cliente != null) {
			if (cliente.getPassword().equals(password)) {
				RequestDispatcher rd = request.getRequestDispatcher("/welcome");
				rd.forward(request, response);
			} else
				out.print("Sorry email or password error");
		} else if (azienda != null) {
			if (azienda.getPassword().equals(password)) {
				RequestDispatcher rd = request.getRequestDispatcher("/welcome");
				rd.forward(request, response);
			} else
				out.print("Sorry email or password error");
		}

		out.close();
	}
}
