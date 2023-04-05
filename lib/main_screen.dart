import 'package:flutter/material.dart';
import 'package:royogreen_apps/favorite_plants_list.dart';
import 'package:royogreen_apps/plants_list.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Royogreen'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.star_outline),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const FavoritePlantsList();
                }),
              );
            },
          )
        ],
      ),
      body: const PlantsList(),
    );
  }
}