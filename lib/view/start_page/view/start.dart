import 'package:coffee_shop/model/main_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Stack(
            textDirection: TextDirection.ltr,
            alignment: Alignment.bottomCenter,
            children: [
              // Background Image
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.8,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  'assets/images/cover/cover.jpg',
                  fit: BoxFit.cover,
                ),
              ),

              // Main Text
              Positioned(
                bottom: 20,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Text(
                    'Fall in Love with Coffee in Blissful Delight!',
                    overflow: TextOverflow.visible,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),

          // Subtitle Text
          Text(
            'Welcome to our cozy coffee corner, where every cup is a delightful experience for you.',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[400],
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),

          // Main Button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: mainButton(
              text: 'Get Started',
              onPressed: () {
                Get.toNamed('/login');
              },
              context: context,
            ),
          ),
        ],
      ),
    );
  }
}
