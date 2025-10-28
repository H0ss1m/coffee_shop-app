import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void loginUser(
  TextEditingController email,
  TextEditingController password,
  BuildContext context,
) async {
  try {
    final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email.text,
      password: password.text,
    );
    if (credential.user != null) {
      if (credential.user!.emailVerified) {
        Get.offNamed('/home');
        // ignore: avoid_print
        print('User is signed in and email is verified!');
      } else {
        showDialog(
          // ignore: use_build_context_synchronously
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('Email Not Verified'),
              content: const Text('Please verify your email to continue.'),
              actions: [
                TextButton(
                  onPressed: () {
                    FirebaseAuth.instance.currentUser?.sendEmailVerification();
                    Get.back();
                  },
                  child: const Text('OK'),
                ),
              ],
            );
          },
        );
        print('Email not verified. Please check your inbox.');
      }
    }
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
      showDialog(
          // ignore: use_build_context_synchronously
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('User Not Found'),
              content: const Text('No user found for that email.'),
              actions: [
                TextButton(
                  onPressed: () {},
                  child: const Text('OK'),
                ),
              ],
            );
          },
        );
      print('No user found for that email.');
    } else if (e.code == 'wrong-password') {
      showDialog(
          // ignore: use_build_context_synchronously
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('Wrong Password'),
              content: const Text('Wrong password provided for that user.'),
              actions: [
                TextButton(
                  onPressed: () {},
                  child: const Text('OK'),
                ),
              ],
            );
          },
        );
      print('Wrong password provided for that user.');
    } else {
      showDialog(
          // ignore: use_build_context_synchronously
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('Error'),
              content: Text(e.message.toString()),
              actions: [
                TextButton(
                  onPressed: () {
                    Get.offNamed('/signup');
                  },
                  child: const Text('OK'),
                ),
                TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: const Text('Cancel'),
                ),
              ],
            );
          },
        );
      print('Error: ${e.message}');
    }
  }
}
