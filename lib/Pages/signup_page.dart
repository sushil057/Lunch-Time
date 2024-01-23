import 'package:flutter/material.dart';
import 'package:my_app/Pages/login_page.dart';
import 'package:my_app/components/colors.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: AppColors.primarycolor,
          title: const Text(
            "Create Account",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/images/lunchtime_logo.png",
                        height: 200,
                        width: 170,
                        fit: BoxFit.scaleDown,
                      ),
                      const Text(
                        "SIGN UP HERE",
                        style: TextStyle(
                          fontSize: 21,
                          color: AppColors.primarycolor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const TextField(
                        decoration: InputDecoration(
                            hintText: "Full Name",
                            prefixIcon: Icon(
                              Icons.person,
                              color: AppColors.primarycolor,
                            ),
                            border:
                                OutlineInputBorder(borderSide: BorderSide())),
                      ),
                      const SizedBox(height: 20),
                      const TextField(
                        decoration: InputDecoration(
                            hintText: "Email",
                            prefixIcon: Icon(
                              Icons.mail,
                              color: AppColors.primarycolor,
                            ),
                            border:
                                OutlineInputBorder(borderSide: BorderSide())),
                      ),
                      const SizedBox(height: 20),
                      const TextField(
                        decoration: InputDecoration(
                            hintText: "Username",
                            prefixIcon: Icon(
                              Icons.person,
                              color: AppColors.primarycolor,
                            ),
                            border:
                                OutlineInputBorder(borderSide: BorderSide())),
                      ),
                      const SizedBox(height: 20),
                      const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Password",
                            prefixIcon: Icon(
                              Icons.lock,
                              color: AppColors.primarycolor,
                            ),
                            border:
                                OutlineInputBorder(borderSide: BorderSide())),
                      ),
                      const SizedBox(height: 20),
                      const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Confirm Password",
                            prefixIcon: Icon(
                              Icons.lock,
                              color: AppColors.primarycolor,
                            ),
                            border:
                                OutlineInputBorder(borderSide: BorderSide())),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        height: 50,
                        width: double.infinity,
                        padding: const EdgeInsets.all(0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.primarycolor,
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero)),
                          child: Text("Sign Up",
                              style: TextStyle(
                                  color: AppColors.secondarycolor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold)),
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const LoginPage(),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 1),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Already have an account?",
                            style: TextStyle(fontSize: 16),
                          ),
                          TextButton(
                            child: const Text(
                              "Login",
                              style: TextStyle(fontSize: 16),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const LoginPage(),
                              ));
                            },
                          ),
                        ],
                      ),
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
