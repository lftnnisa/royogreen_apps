import 'package:flutter/material.dart';
import 'package:royogreen_apps/model/plants.dart';
import 'package:favorite_button/favorite_button.dart';

class ListItem extends StatelessWidget{
  final Plants plants;
  final bool isDone;
  final Function(bool? value) onCheckboxClick;

  //ignore: use_key_in_widget_constructors
  const ListItem({
    required this.plants,
    required this.isDone,
    required this.onCheckboxClick,
  });

  @override
  Widget build(BuildContext context){
    return Card(
      color: isDone ? Colors.white60 : Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                mainAxisSize: MainAxisSize.min,
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
          Checkbox(
            checkColor: Colors.yellowAccent,
            value: isDone,
            onChanged: onCheckboxClick,
          ),
        ],
      ),
    );
  }
}