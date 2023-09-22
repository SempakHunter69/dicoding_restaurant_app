import 'package:dicoding_restaurant_app/styles/values.dart';
import 'package:dicoding_restaurant_app/widgets/menus_detail_card.dart';
import 'package:dicoding_restaurant_app/widgets/restaurant_detail_card.dart';
import 'package:flutter/material.dart';

import '../models/restaurant_model.dart';

class RestaurantDetail extends StatelessWidget {
  const RestaurantDetail({super.key, required this.restaurantElement});
  static const routeName = '/restaurant_detail';
  final RestaurantElement restaurantElement;
  @override
  Widget build(context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text(
          restaurantElement.name,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            RestaurantDetailCard(restaurantElement: restaurantElement),
            const SizedBox(
              height: 15,
            ),
            MenusDetailCard(
              foods: restaurantElement.menus.foods,
              drinks: restaurantElement.menus.drinks,
            ),
          ],
        ),
      ),
    );
  }
}
