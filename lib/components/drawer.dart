import 'package:flutter/material.dart';
import 'package:my_app/Pages/about_us.dart';
import 'package:my_app/Pages/contact_us.dart';
import 'package:my_app/Pages/home_page.dart';
import 'package:my_app/Pages/recipe_page.dart';
import 'package:my_app/components/colors.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * 0.65,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(
              color: AppColors.primarycolor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Lunch Time',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: 110,
                  height: 80,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/images/lunchtime_logo.png',
                    width: 80,
                    height: 80,
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            title: const Text(
              'Home',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text(
              'All Recipes',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Recipes(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text(
              'About Us',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const AboutUs(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text(
              'Contact Us',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Contact(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
