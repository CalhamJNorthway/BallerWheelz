package object;

public class User {
	private int id;
	private String name;
	private String email;
	private String password;
	private String address;
	
	public User(int id, String name, String email, String password, String address) {
		this.id = id;
		this.name = name;
		this.email = email;
		this.password = password;
		this.address = address;
	}

	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getEmail() {
		return email;
	}

	public String getPassword() {
		return password;
	}

	public String getAddress() {
		return address;
	}
	
}
