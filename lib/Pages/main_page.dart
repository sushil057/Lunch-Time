import 'package:flutter/material.dart';
import 'package:my_app/Pages/login_page.dart';
import 'package:my_app/components/colors.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lunch Time',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/images/main_screen.jpg',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover,
            ),
          ),
          // Dark Overlay
          Positioned.fill(
            child: Container(
              color: Colors.black
                  .withOpacity(0.65), // Adjust the opacity to control darkness
            ),
          ),
          // Content
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Placeholder for Lunch Time PNG
                Image.asset(
                  'assets/images/lunchtime_logo.png',
                  width: 200,
                  height: 200,

                  // You can adjust width and height according to your image size
                ),
                // const SizedBox(height: 0),
                // Text "Lunch Time"
                const Text(
                  'Lunch Time',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 70),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.only(
                        bottom: 10, top: 10, right: 25, left: 25),
                    backgroundColor: AppColors.primarycolor,
                    foregroundColor: AppColors.secondarycolor,
                  ),
                  child: const Text(
                    "Proceed",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
