package controllers;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import model.Acquisto;
import model.Azienda;
import model.Cliente;
import model.Prodotto;
import persistence.DBManager;


public class SalvaAcquisto extends HttpServlet {

	private static final long serialVersionUID = 544030728772951941L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		Cliente cliente = (Cliente) req.getSession().getAttribute("utente");

		String jsonReceived = "";
		BufferedReader reader = new BufferedReader(new InputStreamReader(req.getInputStream()));
		String line = reader.readLine();

		while (line != null) {
			jsonReceived = jsonReceived + line;
			line = reader.readLine();
		}

		jsonReceived = jsonReceived.replaceAll("\\\\n", "");
		jsonReceived = jsonReceived.replaceAll("\\\\t", "");

		int cod = 0;
		
		List<Acquisto> tmpAcquisti = DBManager.getInstance().dammiAcquisti();
		
		for (int i = 0; i < tmpAcquisti.size(); i++) {
			if (cod == tmpAcquisti.get(i).getCodiceAcquisto()) {
				i = -1;
				cod++; }
		}
		
		try {
			JSONObject tmp = new JSONObject(jsonReceived);
			System.out.println(tmp.toString());
			JSONArray jsonArray = new JSONArray(tmp.get("values").toString());

			for (int i = 0; i < jsonArray.length(); i++) {
				JSONObject jsonObject = jsonArray.getJSONObject(i);

				String emailCliente = cliente.getEmail();
				int idProdotto = Integer.parseInt(jsonObject.getString("id"));
				int quantita = Integer.parseInt(jsonObject.getString("quantita"));
				double importo = Double.parseDouble(jsonObject.getString("prezzo")) * quantita;
				double totale = Double.parseDouble(tmp.getString("totale"));
				String indirizzoSpedizione = tmp.getString("indirizzo");
				String metodoSpedizione = tmp.getString("spedizione");
				String datiPagamento = tmp.getString("pagamento");

				Acquisto acquisto = new Acquisto();
				Prodotto prodotto = DBManager.getInstance().dammiProdotto(idProdotto);
				Azienda aziendaProdotto = DBManager.getInstance().dammiAzienda(prodotto.getEmailAzienda());

				List<Acquisto> acquisti = DBManager.getInstance().dammiAcquisti();
				
				int id = 0;
				for (int j = 0; j < acquisti.size(); j++)
					if (id == acquisti.get(j).getiD()) {
						j = -1;
						id++;
					}

				acquisto.setiD(id);
				acquisto.setCliente(emailCliente);
				acquisto.setProdotto(idProdotto);
				acquisto.setAziendaProdotto(aziendaProdotto.getRagioneSociale());
				acquisto.setQuantita(quantita);
				
				LocalDateTime myDateObj = LocalDateTime.now();
			    DateTimeFormatter myFormatObj = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss");
			    String formattedDate = myDateObj.format(myFormatObj);
			    
				acquisto.setData(formattedDate);
				acquisto.setImporto(importo);
				acquisto.setTotale(totale);
				acquisto.setCodiceAcquisto(cod);
				acquisto.setIndirizzoSpedizione(indirizzoSpedizione);
				acquisto.setMetodoSpedizione(metodoSpedizione);
				acquisto.setDatiPagamento(datiPagamento);

				prodotto.setQuantitaMagazzino(prodotto.getQuantitaMagazzino() - quantita);
				DBManager.getInstance().aggiornaProdotto(prodotto);

				DBManager.getInstance().salvaAcquisto(acquisto);

			}
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
