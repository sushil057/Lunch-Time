import 'package:flutter/material.dart';
import 'package:my_app/components/account_settins.dart';
import 'package:my_app/components/colors.dart';
import 'package:my_app/components/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        backgroundColor: AppColors.primarycolor,
        foregroundColor: AppColors.secondarycolor,
        title: const Text("Home"),
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
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Featured Recipes',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            // Featured recipes section
            // Replace with your featured recipes widget

            SizedBox(height: 20),

            Text(
              'Recipe Categories',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            // Recipe categories section
            // Replace with your recipe categories widget

            SizedBox(height: 20),

            Text(
              'Newest Additions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            // Newest additions section
            // Replace with your newest additions widget

            SizedBox(height: 20),

            Text(
              'User Favorites',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            // User favorites section
            // Replace with your user favorites widget

            SizedBox(height: 20),

            Text(
              'Trending Recipes',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            // Trending recipes section
            // Replace with your trending recipes widget

            SizedBox(height: 20),

            Text(
              'Cooking Tips & Articles',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            // Cooking tips & articles section
            // Replace with your cooking tips & articles widget

            SizedBox(height: 20),

            Text(
              'Featured Chef',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            // Featured chef section
            // Replace with your featured chef widget

            SizedBox(height: 20),

            Text(
              'Community Interaction',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            // Community interaction section
            // Replace with your community interaction widget
          ],
        ),
      ),
    );
  }
}
