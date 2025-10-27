import 'package:coffee_shop/model/main_button.dart';
import 'package:coffee_shop/utils/sign_up_database.dart';
import 'package:coffee_shop/view/login/widget/customTextField.dart';
import 'package:coffee_shop/view/login/widget/lottie.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController username = TextEditingController();
  final TextEditingController address = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // Ensures the content is displayed within the safe area of the device
        child: Form(
          // Form widget to validate inputs
          key: formKey,
          child: SingleChildScrollView(
            // It's for the overflow issue
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10.0,
              ),
              child: Column(
                spacing: 15,
                children: [
                  // Animation Widget
                  lottieWidget('assets/signup.json', 300, context),

                  const SizedBox(height: 10),

                  // Username Fields
                  customTextField(
                    hintText: 'Username',
                    icon: Icons.person,
                    controller: username,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your username';
                      }
                      // Add more validation if needed
                      return null;
                    },
                  ),

                  // Address Field
                  customTextField(
                    hintText: 'Address',
                    icon: Icons.location_on,
                    controller: address,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your address';
                      }
                      // Add more validation if needed
                      return null;
                    },
                  ),

                  // Phone Field
                  customTextField(
                    hintText: 'Phone',
                    type: TextInputType.phone,
                    icon: Icons.phone,
                    controller: phone,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your phone number';
                      }
                      // Add more validation if needed
                      return null;
                    },
                  ),

                  // Email Field
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

                  // Password Field
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

                  // SignUp Button
                  mainButton(
                    text: 'SignUp',
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        signUp(email.text, password.text, context);
                      } else {
                        Get.snackbar(
                          'Error',
                          'Please fill all fields correctly',
                          snackPosition: SnackPosition.BOTTOM,
                          backgroundColor: Colors.red,
                          colorText: Colors.white,
                          duration: const Duration(seconds: 5),
                        );
                      }
                    },
                    context: context,
                  ),

                  Divider(color: Colors.grey[300], thickness: 1),

                  // Or Section
                  Text(
                    'Or',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[400],
                      fontWeight: FontWeight.w400,
                    ),
                  ),

                  // Login Section
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "You have an account? ",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Get.offNamed('/login');
                        },
                        child: const Text(
                          "Login",
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
