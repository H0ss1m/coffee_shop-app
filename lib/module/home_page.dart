import 'package:coffee_shop/model/color_balet.dart';
import 'package:coffee_shop/utils/all_data.dart';
import 'package:coffee_shop/view/home/widget/body.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // This is the top container with location and notification icon
        Container(
          height: MediaQuery.of(context).size.height * 0.25,
          decoration: BoxDecoration(
            color: Color(0xff313131),
            // borderRadius: BorderRadius.only(
            //   bottomLeft: Radius.circular(20),
            //   bottomRight: Radius.circular(20),
            // ),
          ),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Column(
              // spacing: 10,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 10),

                // Row for location and notification icon
                Row(
                  children: [
                    // Column(
                    //   // Column for location dropdown
                    //   crossAxisAlignment: CrossAxisAlignment.start,
                    //   children: [
                    //     const Text(
                    //       'Location',
                    //       style: TextStyle(
                    //         color: Colors.grey,
                    //         fontWeight: FontWeight.w400,
                    //         fontSize: 12,
                    //       ),
                    //     ),

                    //     // Dropdown for selecting location
                    //     DropdownButton(
                    //       hint: Text(
                    //         'Select Location',
                    //         style: TextStyle(
                    //           color: Colors.white,
                    //           fontWeight: FontWeight.w400,
                    //           fontSize: 16,
                    //         ),
                    //       ),
                    //       icon: Icon(
                    //         Icons.keyboard_arrow_down_rounded,
                    //         color: Colors.white,
                    //       ),
                    //       underline: null,
                    //       items: [
                    //         DropdownMenuItem(
                    //           value: 'New York, USA',
                    //           child: Text('New York, USA'),
                    //         ),
                    //         DropdownMenuItem(
                    //           value: 'Los Angeles, USA',
                    //           child: Text('Los Angeles, USA'),
                    //         ),
                    //       ],
                    //       onChanged: (value) {
                    //         location = value.toString();
                    //       },
                    //     ),
                    //   ],
                    // ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome,',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          userName,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),

                    const Spacer(),

                    // Notification icon with badge
                    badges.Badge(
                      badgeContent: Text(
                        '3',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      badgeStyle: badges.BadgeStyle(badgeColor: Colors.red),
                      child: InkWell(
                        onTap: () {
                          // Handle tap
                        },
                        child: Container(
                          // Notification icon
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.height * 0.05,
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Color(0xffC67C4E),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(
                            'assets/images/icons/bell.png',
                            width: 20,
                            height: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                // Search bar
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 32, 32, 32),
                        Color.fromARGB(255, 32, 32, 32),
                      ],
                      begin: Alignment.bottomRight,
                      end: Alignment.topLeft,
                    ),
                  ),

                  // Search bar with icon and input field
                  child: Row(
                    spacing: 10,
                    children: [
                      Image.asset(
                        'assets/images/icons/search.png',
                        width: 20,
                        height: 20,
                        color: Colors.white,
                      ),

                      // Search input field
                      Expanded(
                        child: TextFormField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            hintText: 'Find your coffee...',
                            hintStyle: TextStyle(color: Colors.grey),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        // This is a placeholder for the banner widget
        Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.12,
              color: Color(0xff313131),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              height: MediaQuery.of(context).size.height * 0.2,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: mainColor,
              ),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ],
        ),

        // This is a placeholder for the body widget
        Expanded(child: body()),
      ],
    );
  }
}
