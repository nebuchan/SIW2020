package controllers;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.commons.io.FileUtils;

import model.Azienda;
import model.Terreno;
import persistence.DBManager;

@MultipartConfig(fileSizeThreshold=1024*1024*2, // 2MB
maxFileSize=1024*1024*10,      // 10MB
maxRequestSize=1024*1024*50)   // 50MB


public class InserimentoTerreno extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{	
		Azienda a= (Azienda) req.getSession().getAttribute("utente");	
		PrintWriter out = resp.getWriter();
		RequestDispatcher rd = req.getRequestDispatcher("successPageInsertTerrain.jsp");
		
		if(a!=null)
		{
			String locazione = (String) req.getSession().getAttribute("position");
			String dimensione_mq = (String) req.getSession().getAttribute("dimension");
			String servizioOfferto = (String) req.getSession().getAttribute("service");
			String costoTerreno = (String) req.getSession().getAttribute("price");
			String descrizione = (String) req.getSession().getAttribute("description");
	
			Terreno terreno = new Terreno();
			List<Terreno> prodotti=DBManager.getInstance().dammiTerreni();
		
			//Incremento ID
			int id=0;
			for(int i=0; i<prodotti.size(); i++) {
				if(id==prodotti.get(i).getId()) {
					i=-1;
					id++;
				}
			}
		
			terreno.setId(id);
			
			terreno.setLocazione(locazione);
			terreno.setDimensione_mq(Integer.parseInt(dimensione_mq));
			terreno.setServiziOfferti(servizioOfferto);
			terreno.setCostoTerreno(Integer.parseInt(costoTerreno));
			terreno.setDescrizione(descrizione);
			
			terreno.setEmailAzienda(a.getEmail());
			
			//File tempDirectory = new File(System.getProperty("java.io.tmpdir"));
			
			String user_dir=System.getProperty("user.home");
			
			File file = new File(user_dir+"/git/"+"SIW2020"+req.getContextPath()+"/WebContent/image/", terreno.getId()+".jpg");
			Part part=req.getPart("immagine");
		    //part.write("Ciao.png");
		    
		    
		    InputStream is = part.getInputStream();
		    FileUtils.copyInputStreamToFile(is, file);
		   // Image image = new Image(file.toURI().toString());
		    
		    System.out.println(file.getAbsolutePath());
		    //String relative_path="image/"+Integer.toString(terreno.getId())+".jpg";
		   // terreno.setImmagine(relative_path);
			
		    
			DBManager.getInstance().inserisciTerreno(terreno);
			out.println("<div class=\"alert alert-success\">\r\n" +
					" <a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>"+
					"  <strong>Prodotto inserito con successo!</strong> \r\n" + 
					"</div>");
		
			rd.include(req, resp);
		}
		else
			out.println("<div class=\"alert alert-danger\">\r\n" +
					" <a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>"+
					"  <strong>Accesso Negato!</strong> Attenzione, Non hai fatto il login. Accedi con il tuo account aziendale per poter inserire un prodotto\r\n" + 
					"</div>");
	}

}