import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  //list shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Cactus Jack',
        price: "3,800",
        description: "One of 20",
        imagePath: "lib/images/cactusJordan.jpeg"),
    Shoe(
        description:
            "Step up your game with our sleek",
        imagePath: 'lib/images/flower.jpeg',
        name: "Air Max",
        price: "7,500"),
    Shoe(
        description:
            "Elevate your stride",
        imagePath: "lib/images/lv.jpeg",
        name: "Loui Vuitton",
        price: "5,500"),
    Shoe(
        description: "it’s your new go-to for elegance.",
        imagePath: "lib/images/Nike shoes.jpeg",
        name: "Fire Nike",
        price: "4,700"),
        Shoe(
        description: "African Royalty",
        imagePath: "lib/images/kdg.jpeg",
        name: "Shobby Kicks",
        price: "7,700")
  ];

  //list in user cart
  List<Shoe> userCart = [];

  //get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //void remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
