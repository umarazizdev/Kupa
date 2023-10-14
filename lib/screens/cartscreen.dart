import 'package:flutter/material.dart';
import 'package:menu/Utilities/colors.dart';
import 'package:menu/Utilities/constant.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    Size sc = Utils().getScreenSize();
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: sc.width * 0.05,
                ),
                const Text(
                  "Cart",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                ),
                Stack(
                  children: [
                    const Icon(Icons.notifications_outlined),
                    Positioned(
                      right: 0,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          height: sc.height * .017,
                          width: sc.width * .017,
                          decoration: const BoxDecoration(
                              color: Colors.red, shape: BoxShape.circle),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: sc.height * 0.25,
            ),
            Center(
              child: Icon(
                Icons.shopping_cart_outlined,
                color: greyclr,
                size: 150,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
