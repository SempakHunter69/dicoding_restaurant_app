import 'package:dicoding_restaurant_app/styles/values.dart';
import 'package:dicoding_restaurant_app/widgets/restaurant_card.dart';
import 'package:flutter/material.dart';

import '../models/restaurant_model.dart'; // Make sure to replace with your actual package name and path

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const routeName = '/home_screen';
  @override
  Widget build(context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 3,
            horizontal: 18,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Explore Restaurant',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
              ),
              Text(
                'Check your city Near by Restaurant',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
              ),
              const SizedBox(
                height: 16,
              ),
              Flexible(child: _buildList(context)),
            ],
          ),
        ),
      ),
    );
  }

  FutureBuilder<String> _buildList(BuildContext context) {
    return FutureBuilder(
      future: DefaultAssetBundle.of(context)
          .loadString('assets/local_restaurant.json'),
      builder: ((context, snapshot) {
        if (!snapshot.hasData) {
          return const CircularProgressIndicator(); // Show a loading indicator while data is being fetched
        }

        final Restaurant restaurant = restaurantFromJson(snapshot.data!);
        final List<RestaurantElement> restaurants = restaurant.restaurants;

        return ListView.builder(
          itemCount: restaurants.length,
          itemBuilder: (context, index) {
            final restaurantElement = restaurants[index];
            return RestaurantCard(
              restaurantElement: restaurantElement,
            );
          },
        );
      }),
    );
  }
}
