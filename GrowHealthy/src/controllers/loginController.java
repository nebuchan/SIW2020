package controllers;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Cliente;
import persistence.DBManager;

public class loginController extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String n = request.getParameter("email");
		String p = request.getParameter("password");

		Cliente cliente = DBManager.getInstance().dammiCliente(n);
		if (cliente != null && cliente.getPassword().equals(p)) {
			RequestDispatcher rd = request.getRequestDispatcher("/welcome");
			rd.forward(request, response);
		} else {
			out.print("Sorry email or password error");

		}

		out.close();
	}
}
