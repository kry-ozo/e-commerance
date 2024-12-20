import 'package:ecommerance/components/shoe_tile.dart';
import 'package:ecommerance/models/cart.dart';
import 'package:ecommerance/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemCart(shoe);

    showDialog(
        context: context,
        builder: (context) => const AlertDialog(
              title: Text("Successfully added!"),
              content: Text('Check your cart!'),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(children: [
        //search bar
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.all(12),
          decoration: BoxDecoration(
              color: Colors.grey[100], borderRadius: BorderRadius.circular(12)),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Search'),
              Icon(
                Icons.search,
              )
            ],
          ),
        ),
        //message
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: Text(
            'everyone flies... some fly longer than others',
            style: TextStyle(color: Colors.grey[600]),
          ),
        ),
        //hot pics
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Hot picks 🔥',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              Text(
                "See all",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: value.getShoeList().length,
              itemBuilder: (context, index) {
                Shoe shoe = value.getShoeList()[index];
                return ShoeTile(
                  shoe: shoe,
                  onTap: () => addShoeToCart(shoe),
                );
              }),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 25, left: 25, right: 25),
          child: Divider(
            color: Colors.white,
          ),
        )
      ]),
    );
  }
}
