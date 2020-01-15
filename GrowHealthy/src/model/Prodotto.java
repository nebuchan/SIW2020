package model;

public class Prodotto {

	private int iD;
	private String nome;
	private String categoria;
	private int quantitaMagazzino;
	private int quantitaMin;
	private String descrizione;
	private double prezzo;
	private int idAzienda;

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

	public int getIdAzienda() {
		return idAzienda;
	}

	public void setIdAzienda(int idAzienda) {
		this.idAzienda = idAzienda;
	}

}