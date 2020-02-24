package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Prodotto;
import persistence.DBManager;


public class EliminaProdotto  extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String id=req.getParameter("id");
		Prodotto prodotto= DBManager.getInstance().dammiProdotto(Integer.parseInt(id));
		DBManager.getInstance().eliminaProdotto(prodotto);

		//File tempDirectory = new File(System.getProperty("java.io.tmpdir"));
		
		//String user_dir=System.getProperty("user.home");
		
		//File file = new File(user_dir+"/git/"+"SIW2020"+req.getContextPath()+"/WebContent/image/", id+".jpg");
		
		//file.delete();
	
		resp.sendRedirect(req.getContextPath() + "/mycategories.jsp");
	}

}
