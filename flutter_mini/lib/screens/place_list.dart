import 'package:flutter/material.dart';
import 'package:flutter_mini/components/place_item.dart';
import '../models/place.dart';

class PlaceList extends StatelessWidget {
  List<Place> placeList = [
    Place(
      placeId: 0,
      title: 'มัสยิดกลาง',
      thumbnailUrl:
          'https://github.com/DuangruthaiAnuto/Pic/blob/main/mudyid.jpg?raw=true',
      description:
          'มัสยิดกลางประจำจังหวัดสงขลา หรือชื่อเต็มๆ เรียกว่า มัสยิดกลางดิย์นุลอิสลาม',
    ),
  ];

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
              placeList[i].thumbnailUrl,
              placeList[i].description),
          itemCount: placeList.length,
          padding: EdgeInsets.all(10),
        ));
  }
}
