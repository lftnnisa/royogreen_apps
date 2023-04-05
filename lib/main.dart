import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:royogreen_apps/provider/favorite_plants.dart';
import 'package:royogreen_apps/main_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FavoritePlantsProvider(),
      child: MaterialApp(
        theme: ThemeData(),
        home: const MainScreen(),
      ),
    );
  }
}