package model;


public class Terreno {
	
	private int id;
	private String emailAzienda;

	private String locazione;
	private int dimensione_mq;
	private String serviziOfferti;
	private int costoTerreno;
	private String descrizione;
	
	public String getLocazione() { return locazione; }
	public void setLocazione(String locazione) { this.locazione = locazione; }
	
	public int getDimensione_mq() { return dimensione_mq; }
	public void setDimensione_mq( int dimensione_mq) { this.dimensione_mq = dimensione_mq; }
	
	public String getServiziOfferti() { return serviziOfferti; }
	public void setServiziOfferti(String serviziOfferti) { this.serviziOfferti = serviziOfferti; }
	
	public int getCostoTerreno() { return costoTerreno; }
	public void setCostoTerreno(int prezzo) { this.costoTerreno = prezzo; }
	
	public String getDescrizione() { return descrizione; }
	public void setDescrizione(String descrizione) { this.descrizione = descrizione; }

	public int getId() { return id; }
	public void setId(int id) { this.id = id; }
	public String getEmailAzienda() { return emailAzienda; }
	public void setEmailAzienda(String emailAzienda) { this.emailAzienda = emailAzienda; }	
	
}
