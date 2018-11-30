import java.util.ArrayList;

import object.Wheelz;

public class Cart {
	private ArrayList<Wheelz> productList;
	
	public Cart(ArrayList<Wheelz> productList) {
		this.productList = productList;
	}

	public ArrayList<Wheelz> getProductList() {
		return productList;
	}

	public void setProductList(ArrayList<Wheelz> productList) {
		this.productList = productList;
	}

	public int getCost() {
		return calculateCost(productList);
	}
	
	public void addProductToList(Wheelz car) {
		this.productList.add(car);
	}
	
	private int calculateCost(ArrayList<Wheelz> productList) {
		int cost = 0;
		for(int i = 0; i < productList.size(); i++) {
			cost += productList.get(i).getPrice();
		}
		return cost;
	}
}
