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
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              margin: const EdgeInsets.only(left: 15, right: 15),
              child: Column(
                children: [
                  const SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Contact Details',
                          style: TextStyle(
                              fontSize: 21, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.email_sharp,
                              color: AppColors.primarycolor,
                            ),
                            Text(
                              "\t\tinfo@lunchtime.com.np",
                              style: TextStyle(color: AppColors.primarycolor),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_rounded,
                              color: AppColors.primarycolor,
                            ),
                            Text(
                              "\t\tSrijana Chowk, Pokhara",
                              style: TextStyle(color: AppColors.primarycolor),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            Icon(
                              Icons.phone_in_talk_rounded,
                              color: AppColors.primarycolor,
                            ),
                            Text(
                              "\t\t+977-9816653425",
                              style: TextStyle(color: AppColors.primarycolor),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'Feel free to provide your feedback.',
                    style: TextStyle(
                        color: AppColors.primarycolor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: "Full Name",
                      prefixIcon: Icon(
                        Icons.person,
                        color: AppColors.primarycolor,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: " Email",
                      prefixIcon: Icon(
                        Icons.email,
                        color: AppColors.primarycolor,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextFormField(
                    maxLines: 5,
                    decoration: const InputDecoration(
                      // prefix: Icon(
                      //   Icons.message,
                      //   color: AppColors.primarycolor,
                      // ),
                      hintText: 'Your Message Here',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 15),
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
                        'Submit',
                        style: TextStyle(
                          color: AppColors.secondarycolor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {},
                    ),
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
