import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class Place {
  final int placeId;
  final String title;
  final String imageUrl;
  final String description;
  final double lat;
  final double lng;

  Place({
    @required this.placeId,
    @required this.title,
    @required this.imageUrl,
    @required this.description,
    @required this.lat,
    @required this.lng,
  });
}
