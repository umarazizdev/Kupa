import 'package:flutter/material.dart';

import '../Utilities/colors.dart';
import '../Utilities/constant.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
                  "Profile",
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
            const Center(
              child: Icon(
                Icons.person,
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
