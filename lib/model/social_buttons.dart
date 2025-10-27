import 'package:flutter/material.dart';

Widget socialButton({
  required String text,
  required void Function() onPressed,
  required BuildContext context,
  Color backgroundColor = const Color(0xffffffff),
  Color strokeColor = const Color(0xffC67C4E),
}) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.06,
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
      color: backgroundColor,
      border: Border.all(color: strokeColor),
      borderRadius: BorderRadius.circular(16.0),
    ),
    child: MaterialButton(
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/icons/google.png', height: 24, width: 24),
          const SizedBox(width: 10),
          Text(
            text,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    ),
  );
}
