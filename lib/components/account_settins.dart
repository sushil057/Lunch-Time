import 'package:flutter/material.dart';
import 'package:my_app/Pages/login_page.dart';
import 'package:my_app/Pages/signup_page.dart';
import 'package:my_app/components/colors.dart';

class AccountSettings extends StatelessWidget {
  const AccountSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: AlertDialog(
        backgroundColor: AppColors.secondarycolor,
        alignment: Alignment.center,
        title: const SizedBox(
          // color: AppColors.primarycolor,
          child: Text(
            "Account Settings",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              // color: AppColors.secondarycolor,
            ),
          ),
        ),
        content: SizedBox(
          width: double.maxFinite,
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              TextButton(
                child: const ListTile(
                  leading: Icon(Icons.person_outline),
                  title: Text(
                    "Edit Personal Details",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                onPressed: () {},
              ),
              TextButton(
                child: const ListTile(
                  leading: Icon(Icons.add),
                  title: Text(
                    "Add new account",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const SignupPage(),
                    ),
                  );
                },
              ),
              TextButton(
                child: const ListTile(
                  leading: Icon(Icons.logout),
                  title: Text(
                    "Log Out",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
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
      ),
    );
  }
}
