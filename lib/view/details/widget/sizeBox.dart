import 'package:coffee_shop/model/color_balet.dart';
import 'package:coffee_shop/view/details/controller/details_controller.dart';
import 'package:flutter/material.dart';

Widget cuSizeBox(
  BuildContext context,
  DetailsController controller,
  int size,
  bool selected,
  void Function() onTap,
) {
  return InkWell(
    onTap: onTap,
    child: Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width * 0.25,
      height: MediaQuery.of(context).size.height * 0.05,
      decoration: BoxDecoration(
        color: selected ? thirdColor : Colors.transparent,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: selected ? mainColor : Colors.grey, width: 2),
      ),
      child: Text(
        size == 0
            ? 'S'
            : size == 1
            ? 'M'
            : size == 2
            ? 'L'
            : 'error',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: selected ? mainColor : Colors.grey,
        ),
      ),
    ),
  );
}
