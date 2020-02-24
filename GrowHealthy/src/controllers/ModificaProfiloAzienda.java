package controllers;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Azienda;
import persistence.DBManager;


public class ModificaProfiloAzienda extends HttpServlet {

	private static final long serialVersionUID = -640763426329110058L;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");

		String email = req.getParameter("email");
		String password = req.getParameter("password");
		String ragioneSociale = req.getParameter("ragioneSociale");
		String sedeLegale = req.getParameter("sedeLegale");
		String referente = req.getParameter("referente");
		String pIva = req.getParameter("pIva");
		String telefono = req.getParameter("telefono");
		String descrizione = req.getParameter("descrizione");

		Azienda azienda = new Azienda();

		azienda.setEmail(email);
		azienda.setPassword(password);
		azienda.setRagioneSociale(ragioneSociale);
		azienda.setSedeLegale(sedeLegale);
		azienda.setReferente(referente);
		azienda.setpIva(Integer.parseInt(pIva));
		azienda.setTelefono(telefono);
		azienda.setDescrizione(descrizione);

		DBManager.getInstance().modificaAzienda(azienda);
		
		req.getSession().setAttribute("utente", azienda);
 
		RequestDispatcher rd = req.getRequestDispatcher("companyManagement.jsp");
		rd.forward(req, resp);
	}

}
