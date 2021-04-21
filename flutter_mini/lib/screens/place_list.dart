import 'package:flutter/material.dart';
import '../models/place.dart';

class PlaceList extends StatelessWidget {
  List<Place> placeList = [
    Place(
      placeId: 0,
      title: 'มัสยิดกลาง',
      thumbnailUrl:
          'https://github.com/DuangruthaiAnuto/Pic/blob/main/mudyid.jpg',
      placeDetail: 'มัสยิดกลางประจำจังหวัดสงขลา หรือชื่อเต็มๆ เรียกว่า มัสยิดกลางดิย์นุลอิสลาม 
      ตั้งอยู่ที่ ตำบลคลองแห อำเภอหาดใหญ่ จังหวัดสงขลา เป็นศาสนสถานของอิสลามที่เป็นที่รู้จักกันอย่างดี 
      ทั้ง ชาวสงขลา และ สายถ่ายภาพทั้งหลาย เพราะมีลักษณะสถาปัตยกรรมที่สวยสง่างดงาม 
      โดยด้านหน้าจะมีสระน้ำทอดยาวราว 200 เมตร ทำให้มัสยิดนี้ดูคล้ายกับทัชมาฮาลที่อินเดีย ไฮไลท์จะอยู่ที่ช่วงพระอาทิตย์ตกดิน',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Songkhla attractions"),
        ),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2 / 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: placeList.length,
          padding: EdgeInsets.all(10),
        ));
  }
}
