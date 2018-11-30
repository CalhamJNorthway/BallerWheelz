package object;

public class Wheelz {
	private int id;
	private String name;
	private int price;
	private String imageSrc;
	
	public Wheelz(int id, String name, int price, String imageSrc) {
		this.id = id;
		this.name = name;
		this.price = price;
		this.imageSrc = imageSrc;
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
}
