import 'package:get/get.dart';
import 'package:getx/models/plant_model.dart';

class CartController extends GetxController {
  var cartItems = [].obs;

  void addToCart(int id) {
    // print(cartItems);
    if (cartItems.isEmpty) {
      return cartItems.add({"id": id, "quantity": 1});
    } else {
      var index = cartItems.indexWhere((element) => element['id'] == id);
      if (index >= 0) {
        cartItems[index]['quantity'] += 1;
      } else {
        cartItems.add({"id": id, "quantity": 1});
      }
    }
  }

  int isExistInCart(int id) {
    return cartItems.indexWhere((element) => element['id'] == id);
  }
}
