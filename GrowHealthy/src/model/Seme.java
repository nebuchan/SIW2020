package model;

public class Seme {
	private int iD;
	private String nome;
	private String categoria;
	private int tempoColtivazione;
	private String periodoColtivazione;

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

	public int getTempoColtivazione() {
		return tempoColtivazione;
	}

	public void setTempoColtivazione(int tempoColtivazione) {
		this.tempoColtivazione = tempoColtivazione;
	}

	public String getPeriodoColtivazione() {
		return periodoColtivazione;
	}

	public void setPeriodoColtivazione(String periodoColtivazione) {
		this.periodoColtivazione = periodoColtivazione;
	}

}
