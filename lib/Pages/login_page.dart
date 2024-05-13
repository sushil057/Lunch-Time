import 'package:flutter/material.dart';
import 'package:my_app/Pages/home_page.dart';
import 'package:my_app/Pages/signup_page.dart';
import 'package:my_app/components/colors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: AppColors.secondarycolor,
          backgroundColor: AppColors.primarycolor,
          title: const Text(
            'Login Page',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/lunchtime_logo.png",
                    height: 200,
                    width: 170,
                  ),
                  const Text(
                    "Welcome",
                    style: TextStyle(
                      fontSize: 32,
                      color: AppColors.primarycolor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: "Email/Username",
                      prefixIcon: Icon(
                        Icons.person,
                        color: AppColors.primarycolor,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Password",
                      prefixIcon: Icon(
                        Icons.lock,
                        color: AppColors.primarycolor,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 50,
                    width: double.infinity,
                    padding: const EdgeInsets.all(0),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: AppColors.primarycolor,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero),
                      ),
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: AppColors.secondarycolor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ));
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Divider(
                    color: Colors.black, // Line color
                    thickness: 2.0, // Line thickness
                    indent: 0, // Left padding
                    endIndent: 0, // Right padding
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                            foregroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: const BorderSide(
                                width: 1,
                                color: AppColors.primarycolor,
                              ),
                            ),
                            textStyle: const TextStyle(color: Colors.black)),
                        child: Image.asset(
                          "assets/images/search.png",
                          height: 40,
                          width: 40,
                        ),
                        onPressed: () {},
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                            foregroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: const BorderSide(
                                width: 1,
                                color: AppColors.primarycolor,
                              ),
                            ),
                            textStyle: const TextStyle(color: Colors.black)),
                        child: Image.asset(
                          "assets/images/facebook.png",
                          height: 40,
                          width: 40,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Not a member?",
                        style: TextStyle(
                          backgroundColor: Colors.transparent,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      TextButton(
                        child: const Text(
                          "Register",
                          style: TextStyle(
                            backgroundColor: Colors.transparent,
                            color: AppColors.primarycolor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const SignupPage(),
                          ));
                        },
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
