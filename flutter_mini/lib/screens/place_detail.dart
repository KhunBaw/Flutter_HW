import 'package:flutter/material.dart';

class PlaceDetail extends StatelessWidget {
  static const routeName = '/place-detail';

  @override
  Widget build(BuildContext context) {
    final place = ModalRoute.of(context).settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(
        title: Text(place["title"]),
        backgroundColor: Colors.teal[800],
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(
              place["thumbnailUrl"],
              fit: BoxFit.cover,
            ),
            Text("${place["description"]}",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal)),
          ],
        ),
      ),
    );
  }
}
