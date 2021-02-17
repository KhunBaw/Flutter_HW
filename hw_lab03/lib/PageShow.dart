import 'package:adobe_xd/adobe_xd.dart';
import 'package:flutter/material.dart';

class PageShow extends StatelessWidget {
  final String name;
  final String adress;
  final String postal;
  final String phone;
  final DateTime recieveDate;
  PageShow(this.name, this.adress, this.phone, this.postal, this.recieveDate);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeWork'),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 50, left: 40),
        child: SizedBox(
          width: 343.0,
          height: 377.0,
          child: Stack(
            children: <Widget>[
              Pinned.fromSize(
                bounds: Rect.fromLTWH(0.0, 0.0, 343.0, 65.0),
                size: Size(343.0, 377.0),
                pinLeft: true,
                pinRight: true,
                pinTop: true,
                fixedHeight: true,
                child:
                    // Adobe XD layer: 'Me' (group)
                    Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 343.0, 65.0),
                      size: Size(343.0, 65.0),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xfff1f9ff),
                        ),
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(65.0, 24.0, 310.0, 17.0),
                      size: Size(343.0, 65.0),
                      fixedWidth: true,
                      fixedHeight: true,
                      child: Text(
                        '$name',
                        style: TextStyle(
                          fontFamily: 'Arial',
                          fontSize: 15,
                          color: const Color(0xff2699fb),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(),
                  ],
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(0.0, 78.0, 343.0, 65.0),
                size: Size(343.0, 377.0),
                pinLeft: true,
                pinRight: true,
                fixedHeight: true,
                child:
                    // Adobe XD layer: 'Me' (group)
                    Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 343.0, 65.0),
                      size: Size(343.0, 65.0),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xfff1f9ff),
                        ),
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(65.0, 24.0, 310.0, 30.0),
                      size: Size(343.0, 65.0),
                      fixedWidth: true,
                      fixedHeight: true,
                      child: Text(
                        '$adress',
                        style: TextStyle(
                          fontFamily: 'Arial',
                          fontSize: 15,
                          color: const Color(0xff2699fb),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(),
                  ],
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(0.0, 156.0, 343.0, 65.0),
                size: Size(343.0, 377.0),
                pinLeft: true,
                pinRight: true,
                fixedHeight: true,
                child:
                    // Adobe XD layer: 'Me' (group)
                    Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 343.0, 65.0),
                      size: Size(343.0, 65.0),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xfff1f9ff),
                        ),
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(65.0, 24.0, 70.0, 17.0),
                      size: Size(343.0, 65.0),
                      fixedWidth: true,
                      fixedHeight: true,
                      child: Text(
                        '$postal',
                        style: TextStyle(
                          fontFamily: 'Arial',
                          fontSize: 15,
                          color: const Color(0xff2699fb),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(),
                  ],
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(0.0, 234.0, 343.0, 65.0),
                size: Size(343.0, 377.0),
                pinLeft: true,
                pinRight: true,
                fixedHeight: true,
                child:
                    // Adobe XD layer: 'Me' (group)
                    Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 343.0, 65.0),
                      size: Size(343.0, 65.0),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xfff1f9ff),
                        ),
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(65.0, 24.0, 100.0, 17.0),
                      size: Size(343.0, 65.0),
                      fixedWidth: true,
                      fixedHeight: true,
                      child: Text(
                        '$phone',
                        style: TextStyle(
                          fontFamily: 'Arial',
                          fontSize: 15,
                          color: const Color(0xff2699fb),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(),
                  ],
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(0.0, 312.0, 343.0, 65.0),
                size: Size(343.0, 377.0),
                pinLeft: true,
                pinRight: true,
                pinBottom: true,
                fixedHeight: true,
                child:
                    // Adobe XD layer: 'Me' (group)
                    Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 343.0, 65.0),
                      size: Size(343.0, 65.0),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xfff1f9ff),
                        ),
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(65.0, 24.0, 100.0, 17.0),
                      size: Size(343.0, 65.0),
                      fixedWidth: true,
                      fixedHeight: true,
                      child: Text(
                        '$recieveDate',
                        style: TextStyle(
                          fontFamily: 'Arial',
                          fontSize: 15,
                          color: const Color(0xff2699fb),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
