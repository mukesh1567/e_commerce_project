import 'package:flutter/material.dart';
import 'home_navpages/cart_page.dart';
import 'home_navpages/category_page.dart';
import 'home_navpages/favourite_page.dart';
import 'home_navpages/home_page.dart';
import 'home_navpages/profile_page.dart';

class BottomHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BottomHomePageState();
  }
}

class BottomHomePageState extends State<BottomHomePage> {
  int selectedIndex = 0;
  List<Widget> navigationPage = [
    NavHome(),
    NavFavourite(),
    NavCategory(),
    NavCart(),
    NavProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: navigationPage[selectedIndex]),
      bottomNavigationBar: NavigationBar(
        indicatorColor: Colors.grey,
        destinations: [
          NavigationDestination(
              selectedIcon: Icon(Icons.home),
              icon: Icon(Icons.home),
              label: "Home"),
          NavigationDestination(
              selectedIcon: Icon(Icons.category_outlined),
              icon: Icon(Icons.category_outlined),
              label: "Category"),
          NavigationDestination(
              selectedIcon: Icon(Icons.favorite_border_outlined),
              icon: Icon(Icons.favorite_border_outlined),
              label: "Favourite"),
          NavigationDestination(
              selectedIcon: Icon(Icons.add_shopping_cart_outlined),
              icon: Icon(Icons.add_shopping_cart_outlined),
              label: "Cart"),
          NavigationDestination(
              selectedIcon: Icon(Icons.person),
              icon: Icon(Icons.person),
              label: "Profile"),
        ],
        selectedIndex: selectedIndex,
        onDestinationSelected: (value) {
          selectedIndex = value;

          setState(() {

          });

        },
      ),
    );
  }
}
