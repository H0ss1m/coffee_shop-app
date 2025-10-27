import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void signUp(String email, String password, BuildContext context) async {
  // Perform sign-up logic here
  try {
  final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: email,
    password: password,
  );
  FirebaseAuth.instance.currentUser?.sendEmailVerification();
} on FirebaseAuthException catch (e) {
  if (e.code == 'weak-password') {
    AwesomeDialog(
      context: context,
      dialogType: DialogType.error,
      title: 'Weak Password',
      desc: 'The password provided is too weak.',
      btnOkOnPress: () {},
    ).show();
    print('The password provided is too weak.');
  } else if (e.code == 'email-already-in-use') {
    AwesomeDialog(
      context: context,
      dialogType: DialogType.error,
      title: 'Email Already In Use',
      desc: 'The account already exists for that email.',
      btnOkText: 'Go to Login?',
      btnOkOnPress: () {
        Get.offNamed('/login');
      },
      btnCancelOnPress: () {
        Get.back();
      },
    ).show();
  }
} catch (e) {
  print(e);
}
}