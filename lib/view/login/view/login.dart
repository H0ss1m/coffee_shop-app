import 'package:coffee_shop/model/main_button.dart';
import 'package:coffee_shop/model/social_buttons.dart';
import 'package:coffee_shop/model/google_auth.dart';
import 'package:coffee_shop/utils/login_database.dart';
import 'package:coffee_shop/view/login/widget/customTextField.dart';
import 'package:coffee_shop/view/login/widget/lottie.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            // physics: const NeverScrollableScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10.0,
              ),
              child: Column(
                spacing: 15,
                children: [
                  // Animation Widget
                  lottieWidget('assets/login.json', 300, context),

                  const SizedBox(height: 10),

                  // Email and Password Fields
                  customTextField(
                    hintText: 'Email',
                    icon: Icons.email,
                    controller: email,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      }
                      // Add more validation if needed
                      return null;
                    },
                  ),
                  customTextField(
                    hintText: 'Password',
                    icon: Icons.lock,
                    controller: password,
                    isPassword: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      if (value.length < 6) {
                        return 'Password must be at least 6 characters';
                      }
                      // Add more validation if needed
                      return null;
                    },
                  ),

                  // Forgot Password Section
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          if (email.text.isNotEmpty) {
                            FirebaseAuth.instance.sendPasswordResetEmail(
                              email: email.text,
                            );
                          } else {
                            Get.snackbar(
                              'Error',
                              'Please put your email in email field then press (Forgot Password?)',
                              snackPosition: SnackPosition.BOTTOM,
                              backgroundColor: Colors.red,
                              colorText: Colors.white,
                              duration: Duration(seconds: 5),
                            );
                          }
                        },
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(color: const Color(0xffC67C4E)),
                        ),
                      ),
                    ],
                  ),

                  // Login Button
                  mainButton(
                    text: 'Login',
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        loginUser(email, password, context);
                      } else {
                        Get.snackbar(
                          'Error',
                          'Please fill in all fields correctly.',
                          snackPosition: SnackPosition.BOTTOM,
                          backgroundColor: Colors.red,
                          colorText: Colors.white,
                          duration: const Duration(seconds: 3),
                        );
                      }
                    },
                    context: context,
                  ),

                  // Or Section
                  Text(
                    'Or',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[400],
                      fontWeight: FontWeight.w400,
                    ),
                  ),

                  // Social Buttons
                  socialButton(
                    text: 'Go with Google',
                    onPressed: () {
                      signInWithGoogle();
                    },
                    context: context,
                  ),

                  Divider(color: Colors.grey[300], thickness: 1),

                  // Sign Up Section
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account? ",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/signup');
                        },
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xffC67C4E),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
