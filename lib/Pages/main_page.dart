import 'package:flutter/material.dart';
import 'package:my_app/Pages/login_page.dart';
import 'package:my_app/components/colors.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          foregroundColor: AppColors.secondarycolor,
          backgroundColor: AppColors.primarycolor,
          title: const Text(
            "Lunch Time",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(
                    bottom: 10, top: 10, right: 60, left: 60),
                child: Image.asset(
                  "assets/images/lunchtime_logo.png",
                ),
              ),
              const Text(
                "Welcome",
                style: TextStyle(
                  color: AppColors.primarycolor,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Your Desired food items in your finger tips",
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 100),
              Container(
                padding: EdgeInsets.zero,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primarycolor,
                    foregroundColor: AppColors.secondarycolor,
                  ),
                  child: const Text("Proceed"),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
