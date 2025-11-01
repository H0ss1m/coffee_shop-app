import 'package:coffee_shop/model/color_balet.dart';
import 'package:coffee_shop/utils/filter_bar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget filterBar() {
  return GetBuilder<FilterBarController>(
    init: FilterBarController(),
    builder: (controller) {
      return ListView.builder(
        itemCount: controller.filterData.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  controller.select(index);
                },
                child: Container(
                  margin: EdgeInsets.only(right: 10),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  decoration: BoxDecoration(
                    color: controller.filterData[index]['isSelected']
                        ? mainColor
                        : Colors.grey[300],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    controller.filterData[index]['title'],
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: controller.filterData[index]['isSelected']
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      );
    },
  );
}
