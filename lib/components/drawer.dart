import 'package:flutter/material.dart';
import 'package:my_app/Pages/about_us.dart';
import 'package:my_app/Pages/contact_us.dart';
import 'package:my_app/Pages/home_page.dart';
import 'package:my_app/Pages/menu_page.dart';
import 'package:my_app/components/colors.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    double drawerWidth = MediaQuery.of(context).size.width * 0.5;

    return Drawer(
      width: drawerWidth,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      backgroundColor: AppColors.secondarycolor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          DrawerHeader(
              decoration: const BoxDecoration(color: AppColors.primarycolor),
              child: Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Column(children: [
                  const Text(
                    "Lunch Time",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    width: 50,
                    child: Image.asset("assets/images/lunchtime_logo.png"),
                  ),
                ]),
              )),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                child: const Text(
                  "Home Page",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: AppColors.primarycolor,
                    fontSize: 20,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                },
              ),
              TextButton(
                child: const Text(
                  "Our Menu",
                  style: TextStyle(
                    color: AppColors.primarycolor,
                    fontSize: 20,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Menu(),
                  ));
                },
              ),
              TextButton(
                child: const Text(
                  "About Us",
                  style: TextStyle(
                    color: AppColors.primarycolor,
                    fontSize: 20,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const AboutUs(),
                  ));
                },
              ),
              TextButton(
                child: const Text(
                  "Contact Us",
                  style: TextStyle(
                    color: AppColors.primarycolor,
                    fontSize: 20,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const Contact(),
                    ),
                  );
                },
              ),
              Container(
                margin: const EdgeInsets.only(top: 30, left: 5),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
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
            ],
          ),
        ],
      ),
    );
  }
}
