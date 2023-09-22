import 'package:flutter/material.dart';

import '../models/restaurant_model.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({super.key, required this.foods});

  final Food foods;
  @override
  Widget build(context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Image.network(
              'https://img.freepik.com/free-photo/top-view-table-full-delicious-food-composition_23-2149141353.jpg',
              width: 80,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              foods.name,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Colors.black,
                    fontSize: 14,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
