import 'package:flutter/material.dart';

import '../models/restaurant_model.dart';
import '../styles/values.dart';
import 'drink_card.dart';
import 'food_card.dart';

class MenusDetailCard extends StatelessWidget {
  const MenusDetailCard({
    super.key,
    required this.foods,
    required this.drinks,
  });

  final List<Food> foods;
  final List<Drink> drinks;
  @override
  Widget build(context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(
        horizontal: 22,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                'List of Menu',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Colors.black,
                      fontSize: 16,
                    ),
              ),
              const Spacer(),
              Text(
                'See All',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: primaryColor,
                      fontSize: 16,
                    ),
              ),
              const Icon(
                Icons.keyboard_arrow_right,
                color: primaryColor,
              )
            ],
          ),
          Text(
            'Foods',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Colors.black,
                  fontSize: 16,
                ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 120, // Adjust the height as needed
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: foods.length,
              itemBuilder: (context, index) {
                return FoodCard(foods: foods[index]);
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Drinks',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Colors.black,
                  fontSize: 16,
                ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 120, // Adjust the height as needed
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: drinks.length,
              itemBuilder: (context, index) {
                return DrinkCard(drinks: drinks[index]);
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
