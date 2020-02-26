package controllers;

import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.rometools.rome.feed.synd.SyndEntry;
import com.rometools.rome.feed.synd.SyndFeed;
import com.rometools.rome.io.FeedException;
import com.rometools.rome.io.SyndFeedInput;
import com.rometools.rome.io.XmlReader;

import model.CategoriaProdotto;
import model.Prodotto;
import model.RSS;
import persistence.DBManager;


public class RSSController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html;charset=UTF-8");

		List<Prodotto> listaProdotti = DBManager.getInstance().dammiProdotti();
		List<Prodotto> listaProdottiFrutta = DBManager.getInstance().dammiProdottiPerCategoria("Frutta");
		List<Prodotto> listaProdottiVerdura = DBManager.getInstance().dammiProdottiPerCategoria("Verdura");
		List<Prodotto> listaProdottiLegumi = DBManager.getInstance().dammiProdottiPerCategoria("Legumi");
		List<Prodotto> listaProdottiTuberi = DBManager.getInstance().dammiProdottiPerCategoria("Tuberi");
		
		URL url = new URL("http://rss.imagelinenetwork.com/AgroNotizie");
		XmlReader xmlReader = null;
		List<RSS> RSSList = new LinkedList<RSS>();
		List<RSS> RSSList2 = new LinkedList<RSS>();

		boolean isConnect = false;
		// CHECK INTERNET CONNECTION
		try {
			URLConnection connection = url.openConnection();
			connection.connect();
			isConnect = true;
			System.out.println("Internet is connected");
		} catch (MalformedURLException e) {
			System.out.println("Internet is not connected");
		} catch (IOException e) {
			System.out.println("Internet is not connected");
		}
		
		if (isConnect == true) {
			try {
				xmlReader = new XmlReader(url);
				SyndFeed feeder = new SyndFeedInput().build(xmlReader);

				for (Object iterator : feeder.getEntries()) {
					SyndEntry syndEntry = (SyndEntry) iterator;
					int i = 0;
					RSSList.add(new RSS(syndEntry.getTitle(), syndEntry.getEnclosures().get(i).getUrl(), syndEntry.getLink()));
					i++;
				}

				// PROVA OUTPUT
				for (int i = 0; i < 9; i++) {
					RSSList2.add(RSSList.get(i));					
				}
				
			} catch (IllegalArgumentException e) {
				e.printStackTrace();
			} catch (FeedException e) {
				e.printStackTrace();
			} finally {
				if (xmlReader != null)
					xmlReader.close();
			}
			
			request.setAttribute("fruitList", listaProdottiFrutta);
			request.setAttribute("vegetablesList", listaProdottiVerdura);
			request.setAttribute("legumesList", listaProdottiLegumi);
			request.setAttribute("tubersList", listaProdottiTuberi);
			request.setAttribute("latestProduct", listaProdotti);
			request.setAttribute("feeder", RSSList2);
		}
		RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
		rd.include(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
