import 'package:ecommerance/components/bottom_nav_bar.dart';
import 'package:ecommerance/pages/cart_page.dart';
import 'package:ecommerance/pages/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  //navigate void
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //list of pages
  final List<Widget> _pages = [const ShopPage(), const CartPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        bottomNavigationBar: MyBottomNavBar(
          onTabChange: (index) => navigateBottomBar(index),
        ),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Builder(
            builder: (context) => IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(
                Icons.menu,
              ),
            ),
          ),
        ),
        drawer: Drawer(
          backgroundColor: Colors.grey[900],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //logo

              //other pages
              Column(
                children: [
                  DrawerHeader(
                      child: Image.asset(
                    'lib/images/nike.png',
                    color: Colors.white,
                  )),
                  const Padding(
                    padding: EdgeInsets.only(left: 25, top: 15),
                    child: ListTile(
                      leading: Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Home",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: ListTile(
                      leading: Icon(
                        Icons.info,
                        color: Colors.white,
                      ),
                      title: Text(
                        "About",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),

              //logout
              const Padding(
                padding: EdgeInsets.only(left: 25, bottom: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.logout,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Logout",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
        body: _pages[_selectedIndex]);
  }
}
