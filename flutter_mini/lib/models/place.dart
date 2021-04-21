import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class Place {
  final int placeId;
  final String title;
  final String thumbnailUrl;
  final String placeDetail;

  Place({
    @required this.placeId,
    @required this.title,
    @required this.thumbnailUrl,
    @required this.placeDetail,
  });
}
