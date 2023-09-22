import 'dart:io';

import 'package:dicoding_restaurant_app/models/restaurant_model.dart';
import 'package:dicoding_restaurant_app/screens/home_screen.dart';
import 'package:dicoding_restaurant_app/screens/restaurant_detail.dart';
import 'package:dicoding_restaurant_app/styles/values.dart';
import 'package:flutter/material.dart';

void main() {
  // Disable certificate validation (not recommended for production)
  HttpOverrides.global = MyHttpOverrides();
  runApp(const MyApp());
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Restaurant App',
        theme: ThemeData().copyWith(
          colorScheme: Theme.of(context).colorScheme.copyWith(
                primary: primaryColor,
                onPrimary: Colors.white,
              ),
          textTheme: myTextTheme,
        ),
        initialRoute: HomeScreen.routeName,
        routes: {
          HomeScreen.routeName: (context) => const HomeScreen(),
          RestaurantDetail.routeName: (context) => RestaurantDetail(
              restaurantElement: ModalRoute.of(context)?.settings.arguments
                  as RestaurantElement),
        });
  }
}
