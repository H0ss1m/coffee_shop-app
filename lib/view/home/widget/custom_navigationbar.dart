import 'package:coffee_shop/model/color_balet.dart';
import 'package:flutter/material.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

  int currentIndex = 0;
  PageController pageController = PageController();

StylishBottomBar customNavigationBar(
    {required int currentIndex, required Function(int) onPressed}
) {
    return StylishBottomBar(
      option: DotBarOptions(
        dotStyle: DotStyle.tile,
        iconSize: 24.0,
        inkColor: mainColor,
        gradient: LinearGradient(colors: [mainColor, mainColor]),
      ),
      items: [
        BottomBarItem(
          icon: Image.asset(
            'assets/images/icons/home.png',
            color: Colors.grey,
            width: 24,
            height: 24,
          ),
          title: Image.asset(
            'assets/images/icons/home (1).png',
            color: mainColor,
            width: 24,
            height: 24,
          ),
        ),
        BottomBarItem(
          icon: Image.asset(
            'assets/images/icons/heart.png',
            color: Colors.grey,
            width: 24,
            height: 24,
          ),
          title: Image.asset(
            'assets/images/icons/heart (1).png',
            color: mainColor,
            width: 24,
            height: 24,
          ),
        ),
        BottomBarItem(
          icon: Image.asset(
            'assets/images/icons/shopping-bag.png',
            color: Colors.grey,
            width: 24,
            height: 24,
          ),
          title: Image.asset(
            'assets/images/icons/shopping-bag (1).png',
            color: mainColor,
            width: 24,
            height: 24,
          ),
        ),
        BottomBarItem(
          icon: Image.asset(
            'assets/images/icons/user.png',
            color: Colors.grey,
            width: 24,
            height: 24,
          ),
          title: Image.asset(
            'assets/images/icons/user (1).png',
            color: mainColor,
            width: 24,
            height: 24,
          ),
        ),
      ],
      // hasNotch: true,
      currentIndex: currentIndex,
      onTap: onPressed,
      // (value) {
      //   // updateIndex(value);
      //   // currentIndex = value;
      //   // update();

      //   print(value);
      // },
    );
  }