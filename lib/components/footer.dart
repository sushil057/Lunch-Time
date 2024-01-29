import 'package:flutter/material.dart';
import 'package:my_app/components/colors.dart';

class MyFooter extends StatelessWidget {
  const MyFooter({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      padding: const EdgeInsets.all(10.0),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '©Lunch Time 2024',
            style: TextStyle(color: AppColors.primarycolor),
          ),
        ],
      ),
    );
  }
}
