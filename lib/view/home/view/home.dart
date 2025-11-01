import 'package:coffee_shop/module/cart_page.dart';
import 'package:coffee_shop/module/favorite_page.dart';
import 'package:coffee_shop/module/home_page.dart';
import 'package:coffee_shop/module/user_page.dart';
import 'package:coffee_shop/view/home/widget/custom_navigationbar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  PageController pageController = PageController();

  List pages = [HomePage(), FavoritePage(), CartPage(), UserPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar with title
      bottomNavigationBar: customNavigationBar(
        currentIndex: currentIndex,
        onPressed: (index) {
          setState(() {
            currentIndex = index;
            pageController.jumpToPage(index);
          });
        },
      ),

      // Using PageView to switch between pages
      body: PageView(
        controller: pageController,
        physics: NeverScrollableScrollPhysics(),
        onPageChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        children: [HomePage(), FavoritePage(), CartPage(), UserPage()],
      ),
    );
  }
}
