package model;

public class Prodotto {

	private int iD;
	private String nome;
	private int quantitaMagazzino;
	private int quantitaMin;
	private String descrizione;
	private double prezzo;
	private String categoria;
	private String emailAzienda;
	private String immagine;

	public int getiD() {
		return iD;
	}

	public void setiD(int iD) {
		this.iD = iD;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCategoria() {
		return categoria;
	}

	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}

	public int getQuantitaMagazzino() {
		return quantitaMagazzino;
	}

	public void setQuantitaMagazzino(int quantitaMagazzino) {
		this.quantitaMagazzino = quantitaMagazzino;
	}

	public int getQuantitaMin() {
		return quantitaMin;
	}

	public void setQuantitaMin(int quantitaMin) {
		this.quantitaMin = quantitaMin;
	}

	public String getDescrizione() {
		return descrizione;
	}

	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}

	public double getPrezzo() {
		return prezzo;
	}

	public void setPrezzo(double prezzo) {
		this.prezzo = prezzo;
	}

	public String getEmailAzienda() {
		return emailAzienda;
	}

	public void setEmailAzienda(String emailAzienda) {
		this.emailAzienda = emailAzienda;
	}

	public void setImmagine(String immagine)
	{
		this.immagine=immagine;
		
	}
	public String getImmagine()
	{
		return immagine;
	}
}
