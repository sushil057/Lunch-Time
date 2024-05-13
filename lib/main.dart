import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_app/Pages/home_page.dart';
import 'package:my_app/Pages/login_page.dart';
import 'package:my_app/Pages/main_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyAjqA9dRIjDjV9AtgK-iMweO9dCd6XiLuE", // paste your api key here
      appId: "1:1022654122678:android:8a528afa7a6435744bb417", //paste your app id here
      messagingSenderId: "1022654122678", //paste your messagingSenderId here
      projectId: "lunch-time-9930e", //paste your project id here
    ),
  );
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
        "/login": (context) => const LoginPage(),
        "/home": (context) => const HomePage(),
      },
    );
  }
}



