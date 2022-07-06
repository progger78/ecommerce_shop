import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartItem {
  final String id;
  final int quantity;
  final String image;
  final double price;
  final String title;

  CartItem({
    required this.quantity,
    required this.id,
    required this.image,
    required this.price,
    required this.title,
  });
}

// Demo data for our cart
class Cart with ChangeNotifier {
  final Map<String, CartItem> _cart = {};

  Map<String, CartItem> get cartItem => _cart;

  int get getTotalQuantity {
    return _cart.length;
  }

  double get totalAmount {
    var totalAmount = 0.0;
    _cart.forEach((key, value) {
      totalAmount += value.price * value.quantity;
    });
    return totalAmount;
  }

  void addToCart(String productId, double price, String image, String title) {
    if (_cart.containsKey(productId)) {
      _cart.update(
          productId,
          (value) => CartItem(
              quantity: value.quantity + 1,
              id: value.id,
              image: image,
              price: price,
              title: title));
    } else {
      _cart.putIfAbsent(
          productId,
          () => CartItem(
              quantity: 1,
              id: DateTime.now().toString(),
              image: image,
              price: price,
              title: title));
    }
    Get.snackbar('Success', 'Item added to the cart');
    notifyListeners();
  }

  void deleteItem(productId){
    _cart.remove(productId);
    notifyListeners();

  }
}
