import 'package:coffee_shop/view/details/view/details.dart';
import 'package:coffee_shop/view/home/view/home.dart';
import 'package:coffee_shop/view/login/view/login.dart';
import 'package:coffee_shop/view/sign_up/view/sign_up.dart';
import 'package:coffee_shop/view/start_page/view/start.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // Use a StreamBuilder to handle auth state and navigate accordingly.
      // This is more robust than using a listener in initState.
      home: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // Show a loading indicator while checking auth state
            return const Scaffold(
              body: Center(child: CircularProgressIndicator()),
            );
          }
          if (snapshot.hasData) {
            // User is signed in
            return const Home();
          }
          // User is signed out
          return const StartPage();
        },
      ),
      theme: ThemeData(primaryColor: Color(0xffC67C4E)),
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: '/start', page: () => const StartPage()),
        GetPage(name: '/login', page: () => const Login()),
        GetPage(name: '/signup', page: () => const SignUp()),
        GetPage(name: '/home', page: () => const Home()),
        GetPage(name: '/details', page: () => Details()),
      ],
    );
  }
}
