package controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DatiSpedizione extends HttpServlet{

	private static final long serialVersionUID = -242465802573339878L;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String nome = req.getParameter("nome");
		String cognome = req.getParameter("cognome");
		String cap = req.getParameter("cap");
		String regione = req.getParameter("regione");
		String provincia = req.getParameter("provincia");
		String citta = req.getParameter("citta");
		String via = req.getParameter("via");
		String telefono = req.getParameter("telefono");
		
		String data = nome + " " + cognome + ", " + cap + ", " + regione + ", " + provincia + ", " + citta + ", " + via + ", " + telefono;
		
		PrintWriter out = resp.getWriter();
		out.print(data);
	}

}
