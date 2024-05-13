import 'package:flutter/material.dart';

class NepaleseCusines extends StatelessWidget {
  const NepaleseCusines({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Traditional Recipes'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(
          traditionalFoods.length,
          (index) =>
              TraditionalFoodTile(traditionalFood: traditionalFoods[index]),
        ),
      ),
    );
  }
}

class TraditionalFood {
  final String name;
  final String imageUrl;

  TraditionalFood({
    required this.name,
    required this.imageUrl,
  });
}

final List<TraditionalFood> traditionalFoods = [
  TraditionalFood(
    name: 'Nepali Khana',
    imageUrl: 'https://via.placeholder.com/150',
  ),
  TraditionalFood(
    name: 'Pasta',
    imageUrl: 'https://via.placeholder.com/150',
  ),
  TraditionalFood(
    name: 'Sushi',
    imageUrl: 'https://via.placeholder.com/150',
  ),
  TraditionalFood(
    name: 'Tacos',
    imageUrl: 'https://via.placeholder.com/150',
  ),
  // Add more traditional foods as needed
];

class TraditionalFoodTile extends StatelessWidget {
  final TraditionalFood traditionalFood;

  const TraditionalFoodTile({
    super.key,
    required this.traditionalFood,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Image.network(
              traditionalFood.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              traditionalFood.name,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
