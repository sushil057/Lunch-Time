import 'package:flutter/material.dart';
import 'package:my_app/components/account_settins.dart';
import 'package:my_app/components/colors.dart';
import 'package:my_app/components/drawer.dart';
import 'package:my_app/components/utils/data.dart';
import 'package:my_app/components/utils/details.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var body = Container(
//       color: AppColors.secondarycolor,
//       child: GridView.builder(
//           shrinkWrap: false,
//           itemCount: Data.recipes.length,
//           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2),
//           itemBuilder: (BuildContext context, int index) {
//             return Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: InkWell(
//                 onTap: () {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => DetailsPage(
//                                 recipe: Data.recipes[index],
//                               )));
//                 },
//                 child: Card(
//                   color: Theme.of(context).hintColor,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(8.0),
//                   ),
//                   child: SizedBox(
//                     width: MediaQuery.of(context).size.width / 2,
//                     height: 50,
//                     child: Column(
//                       children: <Widget>[
//                         Expanded(
//                           child: ClipRRect(
//                             borderRadius: const BorderRadius.only(
//                               topLeft: Radius.circular(8.0),
//                               topRight: Radius.circular(8.0),
//                             ),
//                             child: Hero(
//                               tag: Data.recipes[index].id,
//                               child: FadeInImage(
//                                 image:
//                                     NetworkImage(Data.recipes[index].imageUrl),
//                                 fit: BoxFit.cover,
//                                 placeholder: const AssetImage(
//                                     'assets/images/loading.gif'),
//                               ),
//                             ),
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(4.0),
//                           child: Text(
//                             Data.recipes[index].title,
//                             style: TextStyle(
//                                 color: AppColors.secondarycolor,
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             );
//           }),
//     );

//     return Scaffold(
//       drawer: const MyDrawer(),
//       appBar: AppBar(
//         backgroundColor: AppColors.primarycolor,
//         foregroundColor: AppColors.secondarycolor,
//         title: const Text("Recipies"),
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
//       body: body,
//     );
//   }
// }

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
