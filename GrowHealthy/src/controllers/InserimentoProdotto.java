package controllers;

import java.awt.Image;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.commons.io.FileUtils;

import model.Azienda;
import model.Prodotto;
import persistence.DBManager;

@MultipartConfig(fileSizeThreshold=1024*1024*2, // 2MB
maxFileSize=1024*1024*10,      // 10MB
maxRequestSize=1024*1024*50)   // 50MB
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
		prodotto.setEmailAzienda(a.getEmail());
		
		File tempDirectory = new File(System.getProperty("java.io.tmpdir"));
		
		String user_dir=System.getProperty("user.dir");
		
		File file = new File(user_dir+"/git/"+"SIW2020"+req.getContextPath()+"/WebContent/image/", prodotto.getiD()+".jpg");
		Part part=req.getPart("immagine");
	    part.write("Ciao.png");
	    
	    
	    InputStream is = part.getInputStream();
	    FileUtils.copyInputStreamToFile(is, file);
	   // Image image = new Image(file.toURI().toString());
	    
	    System.out.println(file.getAbsolutePath());
	    String relative_path="image/"+Integer.toString(prodotto.getiD())+".jpg";
	    prodotto.setImmagine(relative_path);
	    
		DBManager.getInstance().inserisciProdotto(prodotto);
		
		
		resp.sendRedirect(req.getContextPath() + "/mycategories.jsp");
		}
		
	}
}
