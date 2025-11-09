import 'package:flutter/material.dart';

Widget darkContainer({
  required BuildContext context,
  required String title,
  double height = 0,
  double width = 0,
  BoxShape shape = BoxShape.rectangle,
  Color color = const Color(0xff313131),
}) {
  return Row(
    children: [
      Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
          shape: shape,
        ),
        child: Text(
          title,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    ],
  );
}
