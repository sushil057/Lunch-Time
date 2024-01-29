import 'package:flutter/material.dart';
import 'package:my_app/components/account_settins.dart';
import 'package:my_app/components/colors.dart';
import 'package:my_app/components/drawer.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        drawer: const MyDrawer(),
        appBar: AppBar(
          backgroundColor: AppColors.primarycolor,
          foregroundColor: AppColors.secondarycolor,
          title: const Text(
            "Menu",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
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
        ),
        body: const MenuItems(),
      ),
    );
  }
}

class MenuItems extends StatelessWidget {
  const MenuItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: Center(
          child: Container(
            margin: const EdgeInsets.all(10),
            child: const Column(
              children: [
                FoodItemCard('Burger', 'Delicious beef burger',
                    'assets/images/menuitems/buffmomo.jpeg'),
                FoodItemCard('Pizza', 'Classic Margherita pizza',
                    'assets/images/menuitems/butternaan.jpg'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FoodItemCard extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;

  const FoodItemCard(
    this.title,
    this.description,
    this.imagePath, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        child: Column(
          children: [
            Image.asset(
              imagePath,
              height: 75,
              width: double.infinity,
              fit: BoxFit.fitWidth,
            ),
            ListTile(
              title: Text(title),
              subtitle: Text(description),
            ),
          ],
        ),
      ),
    );
  }
}
