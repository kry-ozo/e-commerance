import 'package:ecommerance/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier{
  List<Shoe> shoeShop = [
    Shoe(
      name: "Nike AirForce 1",
      price: "240",
      imagePath: 'lib/images/af1.png',
      description: 'cool shoe',
    ),
    Shoe(
      name: "Nike Jordan 4",
      price: "240",
      imagePath: 'lib/images/air-jordan.png',
      description: 'cool shoe',
    ),
    Shoe(
      name: "Nike KD Trey 5",
      price: "240",
      imagePath: 'lib/images/sl.png',
      description: 'cool shoe',
    ),];

    List<Shoe> userCart = [];

    List<Shoe> getShoeList(){
      return shoeShop;
      
    }

    List<Shoe> getUserCart(){
      return userCart;
    }

    void addItemCart(Shoe shoe){
      userCart.add(shoe);
      notifyListeners();
    }

    void removeCartItem(Shoe shoe){
      userCart.remove(shoe);
      notifyListeners();
    }
}