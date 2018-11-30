package object;

public class Wheelz {
	private int id;
	private String name;
	private int price;
	private String imageSrc;
	private String description;
	
	public Wheelz(int id, String name, int price, String imageSrc, String description) {
		this.id = id;
		this.name = name;
		this.price = price;
		this.imageSrc = imageSrc;
		this.description = description;
	}

	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public int getPrice() {
		return price;
	}

	public String getImageSrc() {
		return imageSrc;
	}
	
	public String getDescription() {
		return description;
	}
}
