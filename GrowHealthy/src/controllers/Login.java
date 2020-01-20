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

		System.out.println("Sono nel login!");
		
		PrintWriter out = response.getWriter();
		
		RequestDispatcher rd = request.getRequestDispatcher("index.jsp");

		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String tipo = request.getParameter("tipo");

		System.out.print(tipo);

		if (tipo.equals("Cliente")) {
			System.out.println("Log Cliente");
			Cliente cliente = DBManager.getInstance().dammiCliente(email);
			if (cliente != null) {
				if (cliente.getPassword().equals(password)) {

					System.out.println("Utente :" + cliente.getNome() + " " + cliente.getCognome());

					request.getSession().setAttribute("utente", cliente);
					request.getSession().removeAttribute("error");

					rd.forward(request, response);
				} else {
					out.println("<div class=\"alert alert-danger\">\r\n" +
							" <a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>"+
							"  <strong>Accesso Negato!</strong> Username o Password errati. Controllare se i dati inseriti sono corretti\r\n" + 
							"</div>");

					rd.include(request, response);
				}
			} else {
				System.out.println("Log Cliente fallito!");
				out.println("<div class=\"alert alert-danger\">\r\n" +
						" <a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>"+
						"  <strong>Accesso Negato!</strong> Username o Password errati. Controllare se i dati inseriti sono corretti\r\n" + 
						"</div>");

				rd.include(request, response);
			}
		} else if (tipo.equals("Azienda")) {
			System.out.println("Log Azienda");
			Azienda azienda = DBManager.getInstance().dammiAzienda(email);
			if (azienda != null) {
				if (azienda.getPassword().equals(password)) {

					System.out.println("Utente : " + azienda.getRagioneSociale());

					request.getSession().setAttribute("utente", azienda);
					request.getSession().removeAttribute("error");

					rd.forward(request, response);
				} else {
					out.println("<div class=\"alert alert-danger\">\r\n" +
							" <a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>"+
							"  <strong>Accesso Negato!</strong> Username o Password errati. Controllare se i dati inseriti sono corretti\r\n" + 
							"</div>");

					rd.include(request, response);
				}
			} else {
				System.out.println("Log Azienda fallito!");

				out.println("<div class=\"alert alert-danger\">\r\n" +
						" <a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>"+
						"  <strong>Accesso Negato!</strong> Username o Password errati. Controllare se i dati inseriti sono corretti\r\n" + 
						"</div>");

				rd.include(request, response);
			}
		}
		out.close();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getSession().invalidate();
		RequestDispatcher rd = req.getRequestDispatcher("home");
		rd.forward(req, resp);
		
	}
}
