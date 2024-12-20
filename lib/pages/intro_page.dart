import 'package:ecommerance/pages/home_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //logo
                Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12, top: 40),
                  child: Image.asset(
                    'lib/images/nike.png',
                    height: 240,
                  ),
                ),
                const SizedBox(
                  height: 48,
                ),

                //title
                const Text("Just do it",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    )),
                const SizedBox(
                  height: 48,
                ),

                //subtitle
                Text(
                  "Brand new sneakers and custom kicks made width preium quality",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[750],
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 48,
                ),

                //button
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      )),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.circular(15)),
                    child: const Padding(
                      padding: EdgeInsets.all(25.0),
                      child: Center(
                        child: Text(
                          "Shop Now",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
