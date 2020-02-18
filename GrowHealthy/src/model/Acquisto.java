package model;

import java.util.Date;

public class Acquisto {

	private int iD;
	private int codiceAcquisto;
	private String cliente;
	private int prodotto;
	private int quantita;
	private Date data;
	private double importo;
	private double totale;

	public int getiD() {
		return iD;
	}

	public int getCodiceAcquisto() {
		return codiceAcquisto;
	}

	public void setCodiceAcquisto(int cod) {
		this.codiceAcquisto = cod;
	}

	public void setiD(int iD) {
		this.iD = iD;
	}

	public String getCliente() {
		return cliente;
	}

	public void setCliente(String cliente) {
		this.cliente = cliente;
	}

	public int getProdotto() {
		return prodotto;
	}

	public void setProdotto(int prodotto) {
		this.prodotto = prodotto;
	}

	public int getQuantita() {
		return quantita;
	}

	public void setQuantita(int quantita) {
		this.quantita = quantita;
	}

	public Date getData() {
		return data;
	}

	public void setData(Date data) {
		this.data = data;
	}

	public double getImporto() {
		return importo;
	}

	public void setImporto(double importo) {
		this.importo = importo;
	}

	public double getTotale() {
		return totale;
	}

	public void setTotale(double totale) {
		this.totale = totale;
	}

}
