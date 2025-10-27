import 'package:coffee_shop/module/cart_page.dart';
import 'package:coffee_shop/module/favorite_page.dart';
import 'package:coffee_shop/module/home_page.dart';
import 'package:coffee_shop/module/user_page.dart';
import 'package:coffee_shop/view/home/widget/custom_navigationbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CuNavController>(
      init: CuNavController(),
      builder: (controller) {
        return Scaffold(
          // AppBar with title
          bottomNavigationBar: controller.customNavigationBar(),

          // Using PageView to switch between pages
          body: PageView(
            controller: controller.pageController,
            onPageChanged: (index) {
              controller.updateIndex(index);
            },
            // physics: const NeverScrollableScrollPhysics(),
            children: [HomePage(), FavoritePage(), CartPage(), UserPage()],
          ),
        );
      },
    );
  }
}
