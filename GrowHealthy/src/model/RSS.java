package model;

public class RSS {

	private String title;
	private String image;
	private String link;
	public RSS(String title, String image, String link) {
		super();
		this.title = title;
		this.image = image;
		this.link = link;
	}

	public String getTitle() { return title; }
	public String getImage() { return image; }
	public String getLink() { return link; }
	
	public void setTitle(String title) { this.title = title; }
	public void setImage(String image) { this.image = image; }
	public void setLink(String link) { this.link = link; }
	
}
