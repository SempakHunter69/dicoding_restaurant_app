import 'package:dicoding_restaurant_app/models/restaurant_model.dart';
import 'package:dicoding_restaurant_app/screens/restaurant_detail.dart';
import 'package:dicoding_restaurant_app/styles/values.dart';
import 'package:flutter/material.dart';

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({
    super.key,
    required this.restaurantElement,
  });
  final RestaurantElement restaurantElement;
  @override
  Widget build(context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, RestaurantDetail.routeName,
            arguments: restaurantElement);
      },
      child: Card(
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  restaurantElement.pictureId,
                  width: 64,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      restaurantElement.name,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            color: Colors.black,
                          ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          color: primaryColor,
                          size: 10,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          restaurantElement.city,
                          style:
                              Theme.of(context).textTheme.labelSmall!.copyWith(
                                    color: Colors.black,
                                  ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: primaryColor,
                          size: 10,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          restaurantElement.rating.toString(),
                          style:
                              Theme.of(context).textTheme.labelSmall!.copyWith(
                                    color: Colors.black,
                                  ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('You book this Restaurant!'),
                    ),
                  );
                },
                child: const Text('Book'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
