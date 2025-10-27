import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void loginUser(TextEditingController email, TextEditingController password, BuildContext context,) async {
  try {
  final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: email.text,
    password: password.text
  );
  if (credential.user != null) {
    if (credential.user!.emailVerified) {
      Get.offNamed('/home');
      print('User is signed in and email is verified!');
    } else {
      AwesomeDialog(
        context: context,
        dialogType: DialogType.warning,
        animType: AnimType.rightSlide,
        title: 'Email Not Verified',
        desc: 'Please verify your email before logging in.',
        btnOkOnPress: () {
          FirebaseAuth.instance.currentUser?.sendEmailVerification();
          Get.back();
        },
      ).show();
      print('Email not verified. Please check your inbox.');
    }
  }
} on FirebaseAuthException catch (e) {
  if (e.code == 'user-not-found') {
    AwesomeDialog(
            context: context,
            dialogType: DialogType.error,
            animType: AnimType.rightSlide,
            title: 'User Not Found',
            desc: 'No user found for that email.',
            btnOkOnPress: () {},
            ).show();
    print('No user found for that email.');
  } else if (e.code == 'wrong-password') {
    AwesomeDialog(
            context: context,
            dialogType: DialogType.error,
            animType: AnimType.rightSlide,
            title: 'Wrong Password',
            desc: 'Wrong password provided for that user.',
            btnOkOnPress: () {},
            ).show();
    print('Wrong password provided for that user.');
  } else {
    AwesomeDialog(
            context: context,
            dialogType: DialogType.error,
            animType: AnimType.rightSlide,
            title: 'Error',
            desc: e.message ?? 'An unknown error occurred.',
            btnOkText: 'Sign Up?',
            btnOkOnPress: () {
              Get.offNamed('/signup');
            },
            btnCancelOnPress: () {
              Get.back();
            },
            ).show();
    print('Error: ${e.message}');
  }
} 
}