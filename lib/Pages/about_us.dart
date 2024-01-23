import 'package:flutter/material.dart';
import 'package:my_app/components/account_settins.dart';
import 'package:my_app/components/colors.dart';
import 'package:my_app/components/drawer.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
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
          body: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 99, right: 99, top: 0),
                    child: Image.asset(
                      "assets/images/lunchtime_logo.png",
                    ),
                  ),
                  const Text(
                    "About Us",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "Our focus is to offer high quality national as well as international cuisine with the elegance of fine-dining while in a relaxed and comfortable atmosphere. Our menu offers freshly made and unique innovative dishes and our service is attentive and gracious.",
                    textAlign: TextAlign.justify,
                  ),
                  // Container(
                  //   child: ListView(
                  //     children: [
                  //       ListTile(
                  //         title: Text(
                  //           "Fast foods for immediate mood boost",
                  //           style: TextStyle(),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ),
          )),
    );
  }
}

// class ThisDrawer extends StatelessWidget {
//   const ThisDrawer({super.key});

//   @override
//   Widget build(BuildContext context) {
//     double drawerWidth = MediaQuery.of(context).size.width * 0.6;

//     return Drawer(
//       child: Column(children: [
//         DrawerHeader(
//           padding: EdgeInsets.only(
//               left: drawerWidth / 2, right: drawerWidth / 2, top: 25),
//           decoration: BoxDecoration(color: AppColors.primarycolor),
//           child: Text(
//             "Lunch Time",
//             textAlign: TextAlign.center,
//             style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//           ),
//         )
//       ]),
//     );
//   }
// }

// class AboutusPoints extends StatelessWidget {
//   final List<Strings> items = [];

//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       child: ListView.builder(
//         itemBuilder: (context, index),
//       ),
//     );
//   }
// }

 
