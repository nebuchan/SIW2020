package model;

import java.util.Date;

public class Acquisto {

	private int iD;
	private String cliente;
	private int prodotto;
	private int quantita;
	private int costo;
	private Date data;

	public int getiD() {
		return iD;
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

	public int getCosto() {
		return costo;
	}

	public void setCosto(int totale) {
		this.costo = totale;
	}

	public Date getData() {
		return data;
	}

	public void setData(Date data) {
		this.data = data;
	}

}
