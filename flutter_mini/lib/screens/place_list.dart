import 'package:flutter/material.dart';
import 'package:flutter_lab9/providers/place_provider.dart';
import '../components/place_item.dart';
import '../models/place.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class PlaceList extends StatefulWidget {
  @override
  _PlaceListState createState() => _PlaceListState();
}

class _PlaceListState extends State<PlaceList> {
  List<Place> placeList = [];

  void initState() {
    super.initState();
    showItem();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Songkhla attractions"),
          backgroundColor: Colors.teal[800],
        ),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2 / 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, i) => PlaceItem(
              placeList[i].placeId,
              placeList[i].title,
              placeList[i].imageUrl,
              placeList[i].description),
          itemCount: placeList.length,
          padding: EdgeInsets.all(10),
        ));
  }

  showItem() async {
    PlaceProvider _place = PlaceProvider();
    placeList = await _place.getPlaces();
  }
}
