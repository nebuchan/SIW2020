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

public class RegistrazioneCliente extends HttpServlet {

	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		PrintWriter out = resp.getWriter();
		
		String nome = req.getParameter("nome");
		String cognome = req.getParameter("cognome");
		String codiceFiscale = req.getParameter("cf");
		String dataNascita = req.getParameter("data");
		String email = req.getParameter("email");
		String telefono = req.getParameter("telefono");
		String via = req.getParameter("via");
		String citta = req.getParameter("citta");
		String cap = req.getParameter("cap");
		String password = req.getParameter("password");
		
		System.out.println("Nuovo Cliente : " + nome + " " + cognome);
		Cliente cliente = new Cliente();
		cliente.setCodiceFiscale(codiceFiscale);
		cliente.setNome(nome);
		cliente.setCognome(cognome);
		cliente.setDataDiNascita(dataNascita);
		cliente.setVia(via);
		cliente.setCitta(citta);
		cliente.setCap(cap);
		cliente.setTelefono(telefono);
		cliente.setEmail(email);
		cliente.setPassword(password);

		DBManager.getInstance().inserisciCliente(cliente);
		
		RequestDispatcher rd = req.getRequestDispatcher("index.html");
		rd.forward(req, resp);

		
	}

}