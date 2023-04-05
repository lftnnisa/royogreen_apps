import 'package:flutter/foundation.dart';
import 'package:royogreen_apps/model/plants.dart';

class FavoritePlantsProvider extends ChangeNotifier{
  final List<Plants> _favoritePlantsList = [];

  List<Plants> get favoritePlantsList => _favoritePlantsList;

  void complete(Plants plants, bool isDone){
    isDone
        ? _favoritePlantsList.add(plants)
        : _favoritePlantsList.remove(plants);
    notifyListeners();
  }
}