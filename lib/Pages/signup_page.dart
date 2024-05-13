import 'package:flutter/material.dart';
import 'package:my_app/Pages/login_page.dart';
import 'package:my_app/components/colors.dart';

import '../auth/AuthenticationHelper.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});
 
  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController fullNameController=TextEditingController();
  final TextEditingController userNameController=TextEditingController();
  final TextEditingController confirmPasswordController=TextEditingController();
 

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    emailController.dispose();
    passwordController.dispose();
    fullNameController.dispose();
    userNameController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }
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
                      TextField(
                        controller:emailController,
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
                      TextField(
                        controller:userNameController,
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
                      TextField(
                        controller: passwordController,
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
                      TextField(
                        controller:confirmPasswordController,
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
                            if(emailController.text.isEmpty || passwordController.text.isEmpty)
                            {
                              return;
                            }
                              signUp(emailController.text,passwordController.text);
                          },
                        ),
                      ),
                      const SizedBox(height: 1),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Already have an account?",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          TextButton(
                            child: const Text(
                              "Login",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: AppColors.primarycolor,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => LoginPage(),
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
  void signUp(String email,String password){
    AuthenticationHelper()
        .signUp(email: email, password: password)
        .then((result) {
      if (result == null) {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => LoginPage(),
        ));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
            result,
            style: TextStyle(fontSize: 16),
          ),
        ));
      }
    });
  }
}

