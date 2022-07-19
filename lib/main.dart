import 'package:flutter/material.dart';
import 'package:tohome/presentation/pages/cart.dart';
import 'package:tohome/presentation/styles/colors.dart';

import 'presentation/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecommerce',
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 245, 246, 250),
        scaffoldBackgroundColor: const Color.fromARGB(255, 245, 246, 250),
        appBarTheme: const AppBarTheme(
          // foregroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(color: Colors.black),
          // centerTitle: true,
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 25,
          ),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary,
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: <String, Widget Function(BuildContext)>{
        '/': (context) => const HomePage(),
        'cart': (context) => const CartPage(),
      },
    );
  }
}
