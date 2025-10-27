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

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  void initState() {
    super.initState();
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        // Get.offNamed('/start');
        print('User is currently signed out!');
      } else {
        Get.offNamed('/home');
        print('User is signed in!');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/details',
      home: Details(),
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
