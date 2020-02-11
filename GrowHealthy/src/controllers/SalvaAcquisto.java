package controllers;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import model.Cliente;

public class SalvaAcquisto extends HttpServlet{

	private static final long serialVersionUID = 544030728772951941L;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		Cliente cliente = (Cliente) req.getSession().getAttribute("utente");
		
		String jsonReceived = "";
		BufferedReader reader = new BufferedReader(new InputStreamReader(req.getInputStream()));
		String line = reader.readLine();
		
		while(line != null) {
			jsonReceived = jsonReceived + line + "\n";
			line = reader.readLine();
		}
		
		try {
			JSONArray jsonArray = new JSONArray(jsonReceived);
			
			for(int i = 0; i < jsonArray.length(); i++) {
				JSONObject jsonObject = jsonArray.getJSONObject(i);
				
				String emailCliente = cliente.getEmail();
				int idProdotto = jsonObject.getInt("id");
				int quantita = jsonObject.getInt("quantita");
				
				
			}
			
			
			
			
			
			
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
		rd.forward(req, resp);
	}

}
