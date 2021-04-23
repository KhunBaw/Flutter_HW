import 'package:flutter/material.dart';

class PlaceItem extends StatelessWidget {
  final int placeId;
  final String title;
  final String imageUrl;
  final String description;

  PlaceItem(
    this.placeId,
    this.title,
    this.imageUrl,
    this.description,
  );

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: GestureDetector(
        onTap: () {
          // Navigator.of(context).push(MaterialPageRoute(
          //     builder: (context) =>
          //         BookDetail(placeId, title, imageUrl, description)));
          Navigator.of(context).pushNamed('/place-detail', arguments: {
            "placeId": placeId,
            "title": title,
            "imageUrl": imageUrl,
            "description": description,
          });
        },
        child: GridTile(
          child: Image.network(imageUrl, fit: BoxFit.cover),
          footer: GridTileBar(
            backgroundColor: Colors.black54,
            title: Text(
              title,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
