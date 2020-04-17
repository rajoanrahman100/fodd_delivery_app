import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/homescreen.dart';
import 'package:flutter_food_delivery_app/pages/favorite_pages.dart';
import 'package:flutter_food_delivery_app/pages/order_pages.dart';
import 'package:flutter_food_delivery_app/pages/profile_pages.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int currentTabIndex=0;

  HomeScreen _homeScreen;
  OrdersPage _ordersPage;
  FavouritePage _favouritePage;
  ProfilePage _profilePage;

  List<Widget> pages;

  Widget _currentPage;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _homeScreen=HomeScreen();
    _ordersPage=OrdersPage();
    _favouritePage=FavouritePage();
    _profilePage=ProfilePage();
    pages=[_homeScreen,_ordersPage,_favouritePage,_profilePage];

    _currentPage=_homeScreen;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index){
          setState(() {
            currentTabIndex=index;
            _currentPage=pages[index];
          });
        },
        currentIndex: currentTabIndex,
        type: BottomNavigationBarType.fixed,
        items: < BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon:Icon(Icons.home),
              title: Text("Home")
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.shopping_cart),
              title: Text("Cart")
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.favorite),
              title: Text("Favorite")
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.person),
              title: Text("Profile")
          ),
        ],
      ),
      body: _currentPage,
    );
  }
}
