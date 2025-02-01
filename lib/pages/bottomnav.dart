import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ecommerce_app/pages/Order.dart';
import 'package:ecommerce_app/pages/home.dart';
import 'package:ecommerce_app/pages/profile.dart';
import 'package:flutter/material.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  late List<Widget> pages;
  late Home homePage;
  late Order orderpage;
  late Profile profilepage;
  int currentTabIndex = 0;

  @override
  void initState() {
    homePage = const Home();
    orderpage = const Order();
    profilepage = const Profile();
    pages = [homePage, orderpage, profilepage];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Keep only ONE body parameter here
      body: pages[currentTabIndex],
      bottomNavigationBar: CurvedNavigationBar(
        height: 65,
        backgroundColor: Colors.white,
        color: Colors.black,
        animationDuration: const Duration(milliseconds: 500), // Added const
        index: currentTabIndex, // Add this to sync button highlights
        onTap: (int index) {
          setState(() {
            currentTabIndex = index;
          });
        },
        items: const [
          // Added const for better performance
          Icon(Icons.home_outlined, color: Colors.white),
          Icon(Icons.shopping_bag_outlined, color: Colors.white),
          Icon(Icons.person_outline, color: Colors.white),
        ],
      ),
    );
  }
}
