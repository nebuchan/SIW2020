package controllers;

import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
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

import model.RSS;


public class RSSController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html;charset=UTF-8");

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
				for (int i = 0; i < 5; i++) {
					RSSList2.add(RSSList.get(i));
					System.out.println(RSSList2.get(i).getTitle());
					System.out.println(RSSList2.get(i).getImage());
					System.out.println(RSSList2.get(i).getLink());
					System.out.println("");
				}
			} catch (IllegalArgumentException e) {
				e.printStackTrace();
			} catch (FeedException e) {
				e.printStackTrace();
			} finally {
				if (xmlReader != null)
					xmlReader.close();
			}
			request.setAttribute("feeder", RSSList);
			//response.sendRedirect("index.jsp");
		}
		RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
		rd.include(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
