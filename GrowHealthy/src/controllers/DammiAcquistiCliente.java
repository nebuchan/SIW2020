package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import model.Acquisto;
import model.Azienda;
import model.Cliente;
import model.Prodotto;
import persistence.DBManager;


public class DammiAcquistiCliente extends HttpServlet{

	private static final long serialVersionUID = -6714430669194247015L;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{	
		Cliente cliente = (Cliente) req.getSession().getAttribute("utente");	
		List<Acquisto> acquisti = DBManager.getInstance().dammiAcquistiPerCliente(cliente);
		JSONArray jsonAcquisti = new JSONArray();
		
		for(Acquisto acquisto:acquisti) {
			JSONObject jsonAcquisto = new JSONObject();
			
			jsonAcquisto.put("id", acquisto.getiD());
			jsonAcquisto.put("data", acquisto.getData());
			jsonAcquisto.put("totale", acquisto.getTotale());
			jsonAcquisto.put("codice", acquisto.getCodiceAcquisto());
			
			Prodotto prodotto = DBManager.getInstance().dammiProdotto(acquisto.getProdotto());
			Azienda aziendaProdotto = DBManager.getInstance().dammiAzienda(prodotto.getEmailAzienda());
			jsonAcquisto.put("prodotto", prodotto.getNome());
			jsonAcquisto.put("azienda", aziendaProdotto.getRagioneSociale());
			jsonAcquisto.put("indirizzo", acquisto.getIndirizzoSpedizione());
			jsonAcquisto.put("spedizione", acquisto.getMetodoSpedizione());
			jsonAcquisto.put("pagamento", acquisto.getDatiPagamento());
			
			jsonAcquisti.put(jsonAcquisto);
		}
		PrintWriter out = resp.getWriter();
		System.out.println(jsonAcquisti.toString());
		out.print(jsonAcquisti.toString());
		out.close();
	}

}
