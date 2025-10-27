// ignore_for_file: must_be_immutable

import 'package:coffee_shop/model/color_balet.dart';
import 'package:coffee_shop/view/details/controller/details_controller.dart';
import 'package:coffee_shop/view/details/widget/componint.dart';
import 'package:coffee_shop/view/details/widget/sizeBox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Details extends StatelessWidget {
  Details({super.key});

  String name = 'Cappuccino'; // Change it to dynamic value.
  String extra = 'With Steamed Milk'; // Change it to dynamic value.
  String description =
      'Cappuccino is a holly day main of the controller and we will play with it we play for fun and profit for fun Cappuccino is a holly day main of the controller and we will play with it we play for fun and profit for fun Cappuccino is a holly day main of the controller and we will play with it we play for fun and profit for fun Cappuccino is a holly day main of the controller and we will play with it we play for fun and profit for fun Cappuccino is a holly day main of the controller and we will play with it we play for fun and profit for fun Cappuccino is a holly day main of the controller and we will play with it we play for fun and profit for fun Cappuccino is a holly day main of the controller and we will play with it we play for fun and profit for fun'; // Change it to dynamic value.
  String roast = 'Medium Roasted'; // Change it to dynamic value.
  double rate = 4.5; // Change it to dynamic value.
  double price = 4.20; // Change it to dynamic value.
  String size = 'S'; // Change it to dynamic value.
  bool small = true;
  bool medium = false;
  bool large = false;
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 9,
            child: SingleChildScrollView(
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.6,
                      alignment: Alignment.center,
                      child: Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: Image.asset(
                              'assets/images/cp2.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),

                          // App Bar
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 5,
                                  ),
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                  width: MediaQuery.of(context).size.width,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: secondaryColor,
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                        ),
                                        child: IconButton(
                                          onPressed: () {
                                            Get.back();
                                          },
                                          icon: Icon(
                                            Icons.arrow_back_ios_rounded,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: secondaryColor,
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                        ),
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.favorite_border,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.18,
                            padding: const EdgeInsets.all(12.0),
                            decoration: BoxDecoration(
                              // ignore: deprecated_member_use
                              color: Color(0xff101010).withOpacity(0.5),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      // Column for name and extra
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          name,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        Text(
                                          extra,
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    component(
                                      context: context,
                                      name: 'Coffee',
                                      path:
                                          'assets/images/icons/coffee-beans.png',
                                    ),
                                    SizedBox(width: 10),
                                    component(
                                      context: context,
                                      name: 'Milk',
                                      path: 'assets/images/icons/milk.png',
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: mainColor,
                                          size: 25,
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          rate.toString(),
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                          0.05,
                                      alignment: Alignment.center,
                                      width:
                                          MediaQuery.of(context).size.width *
                                          0.4,
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 15,
                                        vertical: 8,
                                      ),
                                      decoration: BoxDecoration(
                                        color: secondaryColor,
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Text(
                                        roast,
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Description',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            description,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Size',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 10),
                          GetBuilder<DetailsController>(
                            init: DetailsController(),
                            builder: (controller) {
                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  cuSizeBox(context, controller, 0, small, () {
                                    small = true;
                                    medium = false;
                                    large = false;
                                    controller.toggleSize();
                                  }),
                                  cuSizeBox(context, controller, 1, medium, () {
                                    small = false;
                                    medium = true;
                                    large = false;
                                    controller.toggleSize();
                                  }),
                                  cuSizeBox(context, controller, 2, large, () {
                                    small = false;
                                    medium = false;
                                    large = true;
                                    controller.toggleSize();
                                  }),
                                ],
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Buy section
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Price',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        spacing: 3,
                        children: [
                          Text(
                            '\$',
                            style: TextStyle(
                              color: mainColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            '$price',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  const Spacer(),

                  // Buy Button
                  MaterialButton(
                    color: mainColor,
                    minWidth: MediaQuery.of(context).size.width * 0.6,
                    height: MediaQuery.of(context).size.height * 0.06,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Add to Cart',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
