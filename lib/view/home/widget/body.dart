import 'package:coffee_shop/model/filter_bar.dart';
import 'package:flutter/material.dart';

Widget body() {
  return SingleChildScrollView(
    child: Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          SizedBox(height: 50, child: filterBar()),
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              return Container();
            },
          ),
        ],
      ),
    ),
  );
}
