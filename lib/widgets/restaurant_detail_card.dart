import 'package:flutter/material.dart';

import '../models/restaurant_model.dart';
import '../styles/values.dart';

class RestaurantDetailCard extends StatelessWidget {
  const RestaurantDetailCard({
    super.key,
    required this.restaurantElement,
  });
  final RestaurantElement restaurantElement;
  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 28,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            restaurantElement.name,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Colors.black,
                  fontSize: 20,
                ),
          ),
          const SizedBox(
            height: 4,
          ),
          Row(
            children: [
              const Icon(
                Icons.location_on,
                size: 20,
                color: primaryColor,
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                restaurantElement.city,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: textColor,
                      fontSize: 12,
                    ),
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              restaurantElement.pictureId,
              height: 182,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.watch_later,
                        size: 20,
                        color: primaryColor,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        'Open Today',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: textColor,
                              fontSize: 12,
                            ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    restaurantElement.opens,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Icon(
                    Icons.directions_rounded,
                    size: 20,
                    color: blueColor,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Visit the Restaurant',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: blueColor,
                          fontSize: 12,
                        ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
