import 'package:ecommerance/models/cart.dart';
import 'package:ecommerance/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartItem extends StatefulWidget {
  final Shoe shoe;
  const CartItem({super.key, required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  removeItemFromCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).removeCartItem(widget.shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: Image.asset(widget.shoe.imagePath),
        title: Text(widget.shoe.name),
        subtitle: Text("\$" + widget.shoe.price),
        trailing: IconButton(
          icon: const Icon(Icons.delete),
          onPressed: () => removeItemFromCart(widget.shoe),
        ),
      ),
    );
  }
}
