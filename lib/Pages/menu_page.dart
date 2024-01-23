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
    return GridView.count(
      // Create a grid with 2 columns. If you change the scrollDirection to
      // horizontal, this produces 2 rows.
      crossAxisCount: 3,
      // Generate 100 widgets that display their index in the List.
      children: List.generate(10, (index) {
        return Padding(
          padding: const EdgeInsets.all(15),
          child: Center(
            child: ListView(
              children: [
                Text(
                  'Item $index',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const Text("Description"),
                const Text("Price")
              ],
            ),
          ),
        );
      }),
    );
  }
}
