package model;

public class Acquisto {

	private int iD;
	private int codiceAcquisto;
	private String cliente;
	private int prodotto;
	private String aziendaProdotto;
	private int quantita;
	private String data;
	private double importo;
	private double totale;
	private String indirizzoSpedizione;
	private String metodoSpedizione;
	private String datiPagamento;

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

	public String getAziendaProdotto() {
		return aziendaProdotto;
	}

	public void setAziendaProdotto(String aziendaProdotto) {
		this.aziendaProdotto = aziendaProdotto;
	}

	public int getQuantita() {
		return quantita;
	}

	public void setQuantita(int quantita) {
		this.quantita = quantita;
	}

	public String getData() {
		return data;
	}

	public void setData(String data) {
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

	public String getIndirizzoSpedizione() {
		return indirizzoSpedizione;
	}

	public void setIndirizzoSpedizione(String indirizzoSpedizione) {
		this.indirizzoSpedizione = indirizzoSpedizione;
	}

	public String getMetodoSpedizione() {
		return metodoSpedizione;
	}

	public void setMetodoSpedizione(String metodoSpedizione) {
		this.metodoSpedizione = metodoSpedizione;
	}

	public String getDatiPagamento() {
		return datiPagamento;
	}

	public void setDatiPagamento(String datiPagamento) {
		this.datiPagamento = datiPagamento;
	}

}
