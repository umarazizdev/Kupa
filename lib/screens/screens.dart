import 'package:flutter/material.dart';
import 'package:menu/Utilities/colors.dart';
import 'package:menu/screens/cartscreen.dart';
import 'package:menu/screens/homescreen.dart';
import 'package:menu/screens/menuscreen.dart';
import 'package:menu/screens/profilescreen.dart';

class Screens extends StatefulWidget {
  const Screens({super.key});

  @override
  State<Screens> createState() => _ScreensState();
}

class _ScreensState extends State<Screens> {
  int selectedindex = 0;
  static const List<Widget> widgetOptions = <Widget>[
    HomeScreen(),
    MenuScreen(),
    CartScreen(),
    ProfileScreen()
  ];
  void _onItemTapped(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundclr,
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            height: 70,
            decoration: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.circular(27)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: BottomNavigationBar(
                  backgroundColor: Colors.greenAccent,
                  onTap: _onItemTapped,
                  currentIndex: selectedindex,
                  selectedItemColor: greenclr,
                  unselectedItemColor: greyclr,
                  showUnselectedLabels: true,
                  elevation: 0,
                  items: const <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                        backgroundColor: Colors.greenAccent,
                        icon: Icon(
                          Icons.home_filled,
                        ),
                        label: "Home"),
                    BottomNavigationBarItem(
                        icon: Icon(
                          Icons.article,
                        ),
                        label: "Menu"),
                    BottomNavigationBarItem(
                        icon: Icon(
                          Icons.shopping_cart,
                        ),
                        label: "Cart"),
                    BottomNavigationBarItem(
                        icon: Icon(
                          Icons.person,
                        ),
                        label: "Profile"),
                  ]),
            ),
          ),
        ),
        body: Center(
          child: widgetOptions.elementAt(selectedindex),
        ));
  }
}
