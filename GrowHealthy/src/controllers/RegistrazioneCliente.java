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

	private static final long serialVersionUID = -2974334476489069848L;

	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");

		String nome = req.getParameter("nome");
		String cognome = req.getParameter("cognome");
		String codiceFiscale = req.getParameter("cf");
		String dataNascita = req.getParameter("data");
		String email = req.getParameter("email");
		String telefono = req.getParameter("telefono");
		String regione = req.getParameter("regione");
		String provincia = req.getParameter("provincia");
		String citta = req.getParameter("citta");
		String via = req.getParameter("via");
		String cap = req.getParameter("cap");
		String password = req.getParameter("password");

		System.out.println("Nuovo Cliente : " + nome + " " + cognome);
		Cliente cliente = new Cliente();
		cliente.setCodiceFiscale(codiceFiscale);
		cliente.setNome(nome);
		cliente.setCognome(cognome);
		cliente.setDataDiNascita(dataNascita);
		cliente.setRegione(regione);
		cliente.setProvincia(provincia);
		cliente.setCitta(citta);
		cliente.setVia(via);
		cliente.setCap(cap);
		cliente.setTelefono(telefono);
		cliente.setEmail(email);
		cliente.setPassword(password);

		DBManager.getInstance().inserisciCliente(cliente);

		resp.sendRedirect(req.getContextPath() + "/index.jsp");
	}

}
