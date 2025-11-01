import 'package:coffee_shop/model/filter_bar.dart';
import 'package:coffee_shop/utils/all_data.dart';
import 'package:flutter/material.dart';

Widget body() {
  return SingleChildScrollView(
    child: Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          filterBar(),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 0.67,
            ),
            itemCount: 4,
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 10,
                  children: [
                    Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        // image: DecorationImage(
                        //   fit: BoxFit.contain,
                        //   image: NetworkImage(coffeeTypes[index]['image']),
                        // ),
                      ),
                      child: Image.network(
                        height: 130,
                        width: double.infinity,
                        coffeeTypes[index]['image'],
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          coffeeTypes[index]['title'],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black.withOpacity(0.8),
                          ),
                        ),
                        Text(
                          coffeeTypes[index]['subTitle'],
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\$${coffeeTypes[index]['price']}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.black.withOpacity(0.8),
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Container(
                                padding: EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                  color: Color(0xffC67C4E),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Icon(Icons.add, color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    ),
  );
}
