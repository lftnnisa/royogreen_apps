import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:royogreen_apps/model/plants.dart';
import 'package:royogreen_apps/provider/favorite_plants.dart';

class FavoritePlantsList extends StatelessWidget{
  const FavoritePlantsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    final List<Plants> favoritePlantsList =
        Provider.of<FavoritePlantsProvider>(
          context,
          listen: false,
        ).favoritePlantsList;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Wishlist'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index){
          final Plants plants = favoritePlantsList[index];
          return Card(
            color: Colors.white60,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget> [
                Expanded(
                  flex: 1,
                  child: Image.asset(plants.imageAsset),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget> [
                        Text(
                          plants.name,
                          style: const TextStyle(fontSize: 16.0),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(plants.type),
                      ],
                    ),
                  ),
                ),
                const Icon(Icons.star),
              ],
            ),
          );
        },
        itemCount: favoritePlantsList.length,
      ),
    );
  }
}