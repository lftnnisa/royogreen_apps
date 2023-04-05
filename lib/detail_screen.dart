import 'package:flutter/material.dart';
import 'package:royogreen_apps/model/plants.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.plants}) : super(key: key);

  final Plants plants;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget> [
            Image.asset(plants.imageAsset),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: Text(
                plants.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Lobster',
                ),
              ),
            ), //Container for title
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget> [
                  Column(
                    children: <Widget> [
                      const Icon(Icons.attach_money),
                      Text(plants.price),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                plants.desc,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Oxygen',
                ),
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index){
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image.asset(
                          plants.photos[index]),
                    ),
                  );
                },
                itemCount: plants.photos.length,
              ),
            ),//Container for description
          ],
        ),
      ),
    );
  }
}
