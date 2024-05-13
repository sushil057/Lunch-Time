// import 'package:flutter/material.dart';
// import 'package:my_app/components/account_settins.dart';
// import 'package:my_app/components/colors.dart';
// import 'package:my_app/components/drawer.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: const MyDrawer(),
//       appBar: AppBar(
//         backgroundColor: AppColors.primarycolor,
//         foregroundColor: AppColors.secondarycolor,
//         title: const Text("Home"),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.account_box),
//             onPressed: () {
//               showDialog(
//                   context: context,
//                   builder: (BuildContext context) {
//                     return const AccountSettings();
//                   });
//             },
//           )
//         ],
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 HomeTile(
//                   image: 'assets/images/menuitems/combokhana.jpg',
//                   text: "nepalese Cusinesz",
//                   onPressed: () {},
//                 ),
//                 HomeTile(
//                   image: 'assets/images/menuitems/butternaan.jpg',
//                   text: "Trending Recipes",
//                   onPressed: () {},
//                 ),
//               ],
//             ),
//             const SizedBox(height: 15),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 HomeTile(
//                   image: 'assets/images/menuitems/cheesepizza.jpeg',
//                   text: "Favourites",
//                   onPressed: () {},
//                 ),
//                 HomeTile(
//                   image: 'assets/images/menuitems/chickennoodles.jpeg',
//                   text: "Saved Recipes",
//                   onPressed: () {},
//                 ),
//               ],
//             ),
//             const SizedBox(height: 15),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class HomeTile extends StatelessWidget {
//   final String text;
//   final String image;
//   final VoidCallback onPressed;

//   const HomeTile({
//     super.key,
//     required this.text,
//     required this.image,
//     required this.onPressed,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10),
//         color: AppColors.primarycolor,
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           IconButton(
//             icon: Column(
//               children: [
//                 Image.asset(
//                   image,
//                   height: 200, // Adjust image height as needed
//                   width: 160, // Adjust image width as needed
//                   fit: BoxFit.cover,
//                 ),
//                 const SizedBox(
//                     height: 8), // Adjust spacing between image and text
//                 Text(
//                   text,
//                   style: TextStyle(
//                     fontSize: 16, // Adjust text font size as needed
//                     fontWeight: FontWeight.bold,
//                     color: AppColors.secondarycolor,
//                   ),
//                 ),
//               ],
//             ),
//             onPressed: onPressed,
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:my_app/components/account_settins.dart';
import 'package:my_app/components/colors.dart';
import 'package:my_app/components/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                },
              );
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                setState(() {});
              },
              decoration: const InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: AppColors.primarycolor, width: 3)),
                enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: AppColors.primarycolor, width: 3)),
                labelText: 'Search Recipes',
                labelStyle: TextStyle(color: AppColors.primarycolor),
                prefixIcon: Icon(
                  Icons.search,
                  color: AppColors.primarycolor,
                ),
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HomeTile(
                  image: 'assets/images/menuitems/combokhana.jpg',
                  text: "Nepalese Cuisines",
                  onPressed: () {},
                ),
                HomeTile(
                  image: 'assets/images/menuitems/butternaan.jpg',
                  text: "Trending Recipes",
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HomeTile(
                  image: 'assets/images/menuitems/cheesepizza.jpeg',
                  text: "Favourites",
                  onPressed: () {},
                ),
                HomeTile(
                  image: 'assets/images/menuitems/chickennoodles.jpeg',
                  text: "Saved Recipes",
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}

class HomeTile extends StatelessWidget {
  final String text;
  final String image;
  final VoidCallback onPressed;

  const HomeTile({
    Key? key,
    required this.text,
    required this.image,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.primarycolor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IconButton(
            icon: Column(
              children: [
                Image.asset(
                  image,
                  height: 200,
                  width: 160,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 8),
                Text(
                  text,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColors.secondarycolor,
                  ),
                ),
              ],
            ),
            onPressed: onPressed,
          ),
        ],
      ),
    );
  }
}
