import 'package:coffee_shop/model/filter_bar.dart';
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
            ),
            itemCount: 4,
            itemBuilder: (context, index) {
              return Container();
            },
          ),
        ],
      ),
    ),
  );
}
