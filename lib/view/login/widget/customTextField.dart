import 'package:flutter/material.dart';

Widget customTextField({
  required String hintText,
  required IconData icon,
  required TextEditingController controller,
  bool isPassword = false,
  TextInputType type = TextInputType.text,
  String? Function(String?)? validator,
}) {
  return TextFormField(
    validator: validator,
    keyboardType: type,
    controller: controller,
    obscureText: isPassword,
    decoration: InputDecoration(
      focusColor: const Color(0xffC67C4E),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: const Color(0xffC67C4E)),
      ),
      labelText: hintText,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Colors.grey),
      ),
    ),
  );
}
