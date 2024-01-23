import 'package:flutter/material.dart';
import 'package:my_app/components/account_settins.dart';
import 'package:my_app/components/colors.dart';
import 'package:my_app/components/drawer.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        drawer: const MyDrawer(),
        appBar: AppBar(
          backgroundColor: AppColors.primarycolor,
          foregroundColor: AppColors.secondarycolor,
          title: const Text("Contact Us"),
          actions: [
            IconButton(
              icon: const Icon(Icons.account_box),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return const AccountSettings();
                    });
              },
            )
          ],
        ),
      ),
    );
  }
}
