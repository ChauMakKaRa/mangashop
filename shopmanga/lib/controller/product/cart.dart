import 'package:shopmanga/models/carts.dart';

List<Cart> carts = [];

void addCart(int id, String email, int idproduct, double total) async {
  List<Cart> cartItems = [];
  Cart newCartItem =
      Cart(id: id, email: email, idproduct: idproduct, total: total);
  cartItems.add(newCartItem);
  carts.add(newCartItem);
}
