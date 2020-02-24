package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import model.Azienda;
import model.Prodotto;
import persistence.DBManager;


public class DammiProdottiPerCategoria extends HttpServlet {

	private static final long serialVersionUID = -6526709270544057262L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		String categoria = req.getParameter("categoria");
		System.out.println("Categoria : " + req.getParameter("categoria"));	
		List<Prodotto> prodotti = DBManager.getInstance().dammiProdottiPerCategoria(categoria);
		JSONArray prodottiJSON = new JSONArray();

		for (Prodotto prodotto : prodotti) {
			JSONObject tmp = new JSONObject();
			try {
				tmp.put("nome", prodotto.getNome());
				tmp.put("prezzo", prodotto.getPrezzo());

				Azienda tmpCompany = DBManager.getInstance().dammiAzienda(prodotto.getEmailAzienda());
				String ragioneSociale = tmpCompany.getRagioneSociale();

				tmp.put("azienda", ragioneSociale);
				tmp.put("id", prodotto.getiD());
				tmp.put("immagine", prodotto.getImmagine());

				prodottiJSON.put(tmp);
			} catch (JSONException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		PrintWriter out = resp.getWriter();
		System.out.println(prodottiJSON.toString());
		out.print(prodottiJSON.toString());
		out.close();
	}

}