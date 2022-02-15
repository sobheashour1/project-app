
import 'package:flutter/material.dart';
import 'package:ui_app_vp8/screens/app/bn_screens/map_screen.dart';
import 'screens/app/bn_screens/categories_screen.dart';
import 'screens/app/bn_screens/home_screen.dart';
import 'screens/auth/create_account_screen.dart';
import 'screens/auth/login_screen.dart';
import 'screens/launch_screen.dart';
import 'screens/outboarding/out_boarding_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/launch_screen',
      routes: {
        '/launch_screen': (context) => LaunchScreen(),
        '/out_boarding_screen': (context) => OutBoardingScreen(),
        '/login_screen': (context) => LoginScreen(),
        '/create_account_screen': (context) => CreateAccountScreen(),
       '/home_screen': (context) => HomeScreen(),
        '/categories_screen': (context) => CategoriesScreen(),
        '/map_screen': (context) => MapScreen(),
      },
    );
  }
}
