package controllers;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import model.Cliente;
import persistence.DBManager;

public class ModificaDatiSpedizioneCliente extends HttpServlet {

	private static final long serialVersionUID = 7798277659947490541L;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Cliente cliente = (Cliente) req.getSession().getAttribute("utente");
		
		String jsonReceived = "";
		BufferedReader reader = new BufferedReader(new InputStreamReader(req.getInputStream()));
		String line = reader.readLine();
		
		while(line != null) {
			jsonReceived = jsonReceived + line;
			line = reader.readLine();
			
		}
		
		jsonReceived = jsonReceived.replaceAll("\\\\n", "");
		jsonReceived = jsonReceived.replaceAll("\\\\t", "");
		
		System.out.println(jsonReceived);
		
		JSONArray data = new JSONArray(jsonReceived);
		
		Cliente tmp = new Cliente();
		
		for(int i = 0; i < data.length(); i++) {
			JSONObject jsonObj = data.getJSONObject(i);
			
			
			String email = cliente.getEmail();
			String codiceFiscale = cliente.getCodiceFiscale();
			String nome = cliente.getNome();
			String cognome = cliente.getCognome();
			String regione = jsonObj.getString("regione");
			String provincia = jsonObj.getString("provincia");
			String citta = jsonObj.getString("citta");
			String via = jsonObj.getString("via");
			String cap = jsonObj.getString("cap");
			String dataNascita = cliente.getDataDiNascita();
			String telefono = cliente.getTelefono();
			String password = cliente.getPassword();
			
			tmp.setEmail(email);
			tmp.setCodiceFiscale(codiceFiscale);
			tmp.setNome(nome);
			tmp.setCognome(cognome);
			tmp.setRegione(regione);
			tmp.setProvincia(provincia);
			tmp.setCitta(citta);
			tmp.setVia(via);
			tmp.setCap(cap);
			tmp.setDataDiNascita(dataNascita);
			tmp.setTelefono(telefono);
			tmp.setPassword(password);
			
			DBManager.getInstance().modificaDatiCliente(tmp);
		}
		
		req.getSession().setAttribute("utente", tmp);
	}

}
