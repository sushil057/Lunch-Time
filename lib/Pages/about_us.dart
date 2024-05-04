import 'package:flutter/material.dart';
import 'package:my_app/components/account_settins.dart';
import 'package:my_app/components/colors.dart';
import 'package:my_app/components/drawer.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        backgroundColor: AppColors.primarycolor,
        foregroundColor: AppColors.secondarycolor,
        title: const Text("About Us"),
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
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About Lunch Time',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColors.primarycolor,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Lunch Time is your ultimate destination for delicious and healthy recipes. We are passionate about providing you with a wide range of recipes that are not only easy to make but also nutritious and mouth-watering.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Our Mission',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColors.primarycolor,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'At Lunch Time, our mission is to inspire people to cook and enjoy homemade meals by providing them with simple yet delicious recipes that cater to various dietary preferences and lifestyles. We believe that cooking should be fun, creative, and accessible to everyone.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Contact Us',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColors.primarycolor,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'If you have any questions, suggestions, or feedback, feel free to reach out to us:',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: AppColors.primarycolor,
                ),
                SizedBox(width: 10),
                Text(
                  'info@lunchtime.com',
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.primarycolor,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(
                  Icons.phone,
                  color: AppColors.primarycolor,
                ),
                SizedBox(width: 10),
                Text(
                  '+1 (123) 456-7890',
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.primarycolor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
