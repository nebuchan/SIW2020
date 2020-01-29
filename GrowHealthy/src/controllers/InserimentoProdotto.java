package controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Azienda;
import model.Prodotto;
import persistence.DBManager;

public class InserimentoProdotto extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		Azienda a= (Azienda) req.getSession().getAttribute("utente");	
		
		if(a!=null)
		{
		String nome = req.getParameter("nome");
		String categoria = req.getParameter("categoria");
		String quantitaMagazzino = req.getParameter("quantitaMagazzino");
		String quantitaMinima = req.getParameter("quantitaMinima");
		String descrizione = req.getParameter("descrizione");
		String prezzo = req.getParameter("prezzo");
		String email = req.getParameter("email");

		Prodotto prodotto = new Prodotto();
		List<Prodotto> prodotti=DBManager.getInstance().dammiProdotti();
		
		//incremento id, sicuro ci sarà qualcosa di meglio, era giusto per provare
		int id=0;
		
		for(int i=0; i<prodotti.size(); i++)
			if(id==prodotti.get(i).getiD())
			{
				i=-1;
				id++;
			}
		
		
		prodotto.setiD(id);
		prodotto.setNome(nome);
		prodotto.setCategoria(categoria);
		prodotto.setQuantitaMagazzino(Integer.parseInt(quantitaMagazzino));
		prodotto.setQuantitaMin(Integer.parseInt(quantitaMinima));
		prodotto.setDescrizione(descrizione);
		prodotto.setPrezzo(Integer.parseInt(prezzo));
		prodotto.setEmailAzienda(email);
		
		DBManager.getInstance().inserisciProdotto(prodotto);
		
		RequestDispatcher rd = req.getRequestDispatcher("mycategories.jsp");
		rd.forward(req, resp);
		}
		
	}

}
