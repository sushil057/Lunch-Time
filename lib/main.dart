import 'package:flutter/material.dart';
import 'package:my_app/Pages/home_page.dart';
import 'package:my_app/Pages/login_page.dart';
import 'package:my_app/Pages/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const MainPage(),
        darkTheme: ThemeData.light(),
        initialRoute: "/",
        routes: {
          // "/": (context) => const MainPage(),
          "/home": (context) => const HomePage(),
          "/login": (context) => const LoginPage(),
        });
  }
}
