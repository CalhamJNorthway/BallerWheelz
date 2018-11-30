<%@ page import+"java.util.*"%>
HashMap<String, ArrayList<Object>> cart = (HashMap<String, ArrayList<Object>>) session.getAttribute("cart");


if(cart == null){
cart = HashMap<String, ArrayList<Object>>();
}
ArrayList <Object> info = new ArrayList<>();
//Add car

String name = session.GetAttribute("name");
String id = session.getAttribute("id");
Integer price = (Integer) session.getAttribute("price");
int quantity = 1;


if(cart.get(id) == null){ // if item not in cart
info.add(name);
info.add("$" + price);
info.add((Integer) quantity);
info.add(id);

cart.put(id, info);

}else{
// Adds one to quantity and updates price
int q = cart.get(id).get(2);	//gets the quantity of the product
q++;
cart.get(id).set(2, q);
cart.get(id).set(1, price * q);
}





info.add(price);
info.add(name)
info.add();

cart.put(id, info);

session.setAttribute("cart", cart);

%>