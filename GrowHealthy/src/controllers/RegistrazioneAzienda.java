package controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Azienda;
import persistence.DBManager;

public class RegistrazioneAzienda extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		PrintWriter out = resp.getWriter();
		
		String ragioneSociale = req.getParameter("ragioneSociale");
		String sedeLegale = req.getParameter("sedeLegale");
		String referente = req.getParameter("referente");
		String pIva = req.getParameter("pIva");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		String telefono = req.getParameter("telefono");
		String descrizione = req.getParameter("descrizione");
		
		Azienda azienda = new Azienda();
		
		azienda.setiD(2);
		azienda.setRagioneSociale(ragioneSociale);
		azienda.setSedeLegale(sedeLegale);
		azienda.setReferente(referente);
		azienda.setpIva(Integer.parseInt(pIva));
		azienda.setEmail(email);
		azienda.setPassword(password);
		azienda.setTelefono(telefono);
		azienda.setDescrizione(descrizione);
		
		System.out.print(ragioneSociale);
		DBManager.getInstance().inserisciAzienda(azienda);
		
		
		RequestDispatcher rd = req.getRequestDispatcher("index.html");
		rd.forward(req, resp);
		
		super.doPost(req, resp);
	}

}
