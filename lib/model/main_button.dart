import 'package:flutter/material.dart';

Widget mainButton({
  required String text,
  required void Function() onPressed,
  required BuildContext context,
  Color backgroundColor = const Color(0xffC67C4E),
}) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.06,
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
      color: backgroundColor,
      borderRadius: BorderRadius.circular(16.0),
    ),
    child: MaterialButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16,
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  );
}
