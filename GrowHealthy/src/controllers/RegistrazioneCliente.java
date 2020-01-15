package controllers;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Cliente;
import persistence.DBManager;

public class RegistrazioneCliente extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String codiceFiscale = req.getParameter("codiceFiscale");
		String nome = req.getParameter("nome");
		String cognome = req.getParameter("cognome");
//		String dataNascita = req.getParameter("dataNascita");
		String via = req.getParameter("via");
		String città = req.getParameter("citta");
		String cap = req.getParameter("cap");
		String telefono = req.getParameter("telefono");
		String email = req.getParameter("email");
		String password = req.getParameter("passwords");

		Cliente cliente = new Cliente();
		cliente.setCodiceFiscale(codiceFiscale);
		cliente.setNome(nome);
		cliente.setCognome(cognome);
//		cliente.setDataDiNascita(dataNascita);
		cliente.setVia(via);
		cliente.setCittà(città);
		cliente.setCap(cap);
		cliente.setTelefono(telefono);
		cliente.setEmail(email);
		cliente.setPassword(password);

		DBManager.getInstance().inserisciCliente(cliente);

		RequestDispatcher rd = req.getRequestDispatcher("index.html");
		rd.forward(req, resp);

		System.out.println("Nuovo Cliente : " + nome + " " + cognome);
	}

}
