import 'package:flutter/material.dart';
import 'package:flutter_mini/screens/place_detail.dart';
import 'package:flutter_mini/screens/place_list.dart';

void main() {
  runApp(SongkhlaApp());
}

class SongkhlaApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Songkhla attractions',
      home: PlaceList(),
      routes: {
        '/place-detail': (context) => PlaceDetail(),
      },
    );
  }
}
