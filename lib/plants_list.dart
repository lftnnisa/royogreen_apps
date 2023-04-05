import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:royogreen_apps/model/plants.dart';
import 'package:royogreen_apps/provider/favorite_plants.dart';
import 'detail_screen.dart';
import 'list_item.dart';

class PlantsList extends StatefulWidget{
  const PlantsList({Key? key}) : super(key: key);

  @override
  _PlantsListState createState() => _PlantsListState();
}

class _PlantsListState extends State<PlantsList>{
  final List<Plants> plantsList = [
    Plants(
      name: 'Monstera Albo Variegata',
      type: 'indoor',
      imageAsset: 'assets/images/Monstera Albo Varigata 1.jpg',
      desc: 'Tanaman Monstera variegata merupakan tanaman dengan daun yang terlihat berlubang dan merupakan varietas dari tanaman Monstera yang kerap disebut dengan Monstera Delisioca ‘Albo Variegata’',
      price: 'Rp 10.000,-',
      photos: [
        'assets/images/Monstera Albo Varigata 1.jpg',
        'assets/images/Monstera Albo Varigata 1.jpg',
        'assets/images/Monstera Albo Varigata 1.jpg',
        'assets/images/Monstera Albo Varigata 1.jpg'
      ],
    ),
    Plants(
      name: 'Monstera Albo Variegata',
      type: 'indoor',
      imageAsset: 'assets/images/Monstera Albo Varigata 1.jpg',
      desc: 'Tanaman Monstera variegata merupakan tanaman dengan daun yang terlihat berlubang dan merupakan varietas dari tanaman Monstera yang kerap disebut dengan Monstera Delisioca ‘Albo Variegata’',
      price: 'Rp 10.000,-',
      photos: [
        'assets/images/Monstera Albo Varigata 1.jpg',
        'assets/images/Monstera Albo Varigata 1.jpg',
        'assets/images/Monstera Albo Varigata 1.jpg',
        'assets/images/Monstera Albo Varigata 1.jpg',
      ],
    ),
    Plants(
      name: 'Monstera Albo Variegata',
      type: 'indoor',
      imageAsset: 'assets/images/Monstera Albo Varigata 1.jpg',
      desc: 'Tanaman Monstera variegata merupakan tanaman dengan daun yang terlihat berlubang dan merupakan varietas dari tanaman Monstera yang kerap disebut dengan Monstera Delisioca ‘Albo Variegata’',
      price: 'Rp 10.000,-',
      photos: [
        'assets/images/Monstera Albo Varigata 1.jpg',
        'assets/images/Monstera Albo Varigata 1.jpg',
        'assets/images/Monstera Albo Varigata 1.jpg',
        'assets/images/Monstera Albo Varigata 1.jpg'
      ],
    ),
    Plants(
      name: 'Monstera Albo Variegata',
      type: 'indoor',
      imageAsset: 'assets/images/Monstera Albo Varigata 1.jpg',
      desc: 'Tanaman Monstera variegata merupakan tanaman dengan daun yang terlihat berlubang dan merupakan varietas dari tanaman Monstera yang kerap disebut dengan Monstera Delisioca ‘Albo Variegata’',
      price: 'Rp 10.000,-',
      photos: [
        'assets/images/Monstera Albo Varigata 1.jpg',
        'assets/images/Monstera Albo Varigata 1.jpg',
        'assets/images/Monstera Albo Varigata 1.jpg',
        'assets/images/Monstera Albo Varigata 1.jpg'
      ],
    ),
    Plants(
      name: 'Monstera Albo Variegata',
      type: 'indoor',
      imageAsset: 'assets/images/Monstera Albo Varigata 1.jpg',
      desc: 'Tanaman Monstera variegata merupakan tanaman dengan daun yang terlihat berlubang dan merupakan varietas dari tanaman Monstera yang kerap disebut dengan Monstera Delisioca ‘Albo Variegata’',
      price: 'Rp 10.000,-',
      photos: [
        'assets/images/Monstera Albo Varigata 1.jpg',
        'assets/images/Monstera Albo Varigata 1.jpg',
        'assets/images/Monstera Albo Varigata 1.jpg',
        'assets/images/Monstera Albo Varigata 1.jpg'
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final Plants plants = plantsList[index];
        return InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return DetailScreen(plants: plants);
            }));
          },
          child: Consumer<FavoritePlantsProvider> (
            builder : (context, FavoritePlantsProvider data, widget){
              return ListItem(
                plants: plants,
                isDone: data.favoritePlantsList.contains(plants),
                onCheckboxClick: (bool? value){
                  setState(() {
                    if(value!=null){
                      value
                          ? data.favoritePlantsList.add(plants)
                          : data.favoritePlantsList.remove(plants);
                    }
                  });
                },
              );
            },
          ),
        );
      },
      itemCount: plantsList.length,
    );
  }
}