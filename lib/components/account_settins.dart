import 'package:flutter/material.dart';
import 'package:my_app/Pages/login_page.dart';
import 'package:my_app/components/colors.dart';

class AccountSettings extends StatelessWidget {
  const AccountSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Dialog box with opaque background
        Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: Dialog(
              backgroundColor: Colors.white, // Opaque background color
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),

              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Close button in the AppBar
                  AppBar(
                    title: Center(
                      child: Text(
                        "Account Settings",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.secondarycolor,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    backgroundColor: AppColors.primarycolor,
                    elevation: 0,
                    automaticallyImplyLeading: false, // Hide back button
                    actions: [
                      IconButton(
                        icon: Icon(
                          Icons.close,
                          color: AppColors.secondarycolor,
                        ),
                        onPressed: () {
                          Navigator.pop(context); // Close the dialog
                        },
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextButton(
                          onPressed: () {
                            // Handle action
                          },
                          child: const Text(
                            "Edit Pesonal Details",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            // Handle action
                          },
                          child: const Text(
                            "Change Photo",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => LoginPage(),
                              ),
                            );
                          },
                          child: const Text(
                            "Logout",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
