import 'package:flutter/material.dart';
import 'package:my_app/Pages/login_page.dart';
import 'package:my_app/Pages/signup_page.dart';
import 'package:my_app/components/account_settins.dart';
import 'package:my_app/components/colors.dart';
import 'package:my_app/components/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.primarycolor,
          foregroundColor: AppColors.secondarycolor,
          actions: [
            IconButton(
              icon: const Icon(Icons.account_box),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return const AccountSettings();
                  },
                );
              },
            ),
          ],
          title: const Text(
            "Home Page",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: SafeArea(
          child: Center(
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  SizedBox(
                      height: 50,
                      width: 50,
                      child: Image.asset("assets/images/lunchtime_logo.png")),
                  const Text(
                    "This is your app's home page",
                    style: TextStyle(
                        color: AppColors.primarycolor,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 150,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.primarycolor,
                                shape: const RoundedRectangleBorder()),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return const LoginPage();
                              }));
                            },
                            child: Text(
                              "Login Here",
                              style: TextStyle(
                                fontSize: 18,
                                color: AppColors.secondarycolor,
                              ),
                            )),
                      ),
                      const SizedBox(width: 20),
                      SizedBox(
                        width: 150,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.primarycolor,
                              shape: const RoundedRectangleBorder()),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) {
                              return const SignupPage();
                            }));
                          },
                          child: Text(
                            "Signup Here",
                            style: TextStyle(
                              fontSize: 18,
                              color: AppColors.secondarycolor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const MyFooter()
                ],
              ),
            ),
          ),
        ),
        drawer: const MyDrawer(),
      ),
    );
  }
}

class MyFooter extends StatelessWidget {
  const MyFooter({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      padding: const EdgeInsets.all(10.0),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '© 2024 My App',
            style: TextStyle(color: AppColors.primarycolor),
          ),
        ],
      ),
    );
  }
}
