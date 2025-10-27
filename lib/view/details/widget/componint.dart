import 'package:flutter/material.dart';

Widget component({
  required BuildContext context,
  required String name,
  required String path,
  Color textColor = Colors.grey,
  Color iconColor = const Color(0xffC67C4E),
}) {
  return Container(
    padding: const EdgeInsets.all(10),
    width: MediaQuery.of(context).size.width * 0.18,
    height: MediaQuery.of(context).size.width * 0.19,
    decoration: BoxDecoration(
      color: Color(0xff313131),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      spacing: 5,
      children: [
        Image.asset(
          path,
          color: iconColor,
          width: MediaQuery.of(context).size.width * 0.07,
          height: MediaQuery.of(context).size.width * 0.07,
        ),

        Text(
          name,
          style: TextStyle(
            color: textColor,
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    ),
  );
}
