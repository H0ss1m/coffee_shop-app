// import 'package:awesome_dialog/awesome_dialog.dart';
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
    showDialog(
          // ignore: use_build_context_synchronously
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('Weak Password'),
              content: const Text('The password provided is too weak.'),
              actions: [
                TextButton(
                  onPressed: () {
                  },
                  child: const Text('OK'),
                ),
              ],
            );
          },
        );
    print('The password provided is too weak.');
  } else if (e.code == 'email-already-in-use') {
    showDialog(
          // ignore: use_build_context_synchronously
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('Email Already In Use'),
              content: const Text('The account already exists for that email.'),
              actions: [
                TextButton(
                  onPressed: () {
                    Get.offNamed('/login');
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
  }
} catch (e) {
  print(e);
}
}