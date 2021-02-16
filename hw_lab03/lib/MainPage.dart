import 'package:adobe_xd/adobe_xd.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:date_field/date_field.dart';
import 'package:intl/intl.dart';

class MainPage extends StatelessWidget {
  String firstName;

  MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeWork'),
      ),
      body: buildStack(),
    );
  }

  buildStack() {
    return Center(
      child: SizedBox(
        width: 327.0,
        height: 622.0,
        child: Stack(
          children: <Widget>[
            Transform.translate(
              offset: Offset(0.0, 58.0),
              child:
                  // Adobe XD layer: 'Input' (none)
                  ListView(
                children: [
                  Wrap(
                    alignment: WrapAlignment.center,
                    spacing: 4,
                    runSpacing: 16,
                    children: [
                      {
                        'text': 'FirstName',
                      },
                      {
                        'text': 'LastName',
                      },
                      {
                        'text': 'Address',
                      },
                      {
                        'text': 'Postal',
                      },
                      {
                        'text': 'Phone',
                      }
                    ].map((map) {
                      final text = map['text'];
                      return
                          // Adobe XD layer: 'Input' (group)
                          SizedBox(
                        width: 327.0,
                        height: 50.0,
                        child: Stack(
                          children: <Widget>[
                            Container(
                              width: 327.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: const Color(0xffffffff),
                                border: Border.all(
                                    width: 1.0, color: const Color(0xffbce0fd)),
                              ),
                            ),
                            Transform.translate(
                              offset: Offset(255.8, 20.0),
                              child: SizedBox(
                                width: 55.0,
                                child: Text(
                                  text,
                                  style: TextStyle(
                                    fontFamily: 'Arial',
                                    fontSize: 10,
                                    color: const Color(0xff2699fb),
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 20,
                runSpacing: 20,
                children: [{}].map((map) {
                  return SizedBox(
                    width: 327.0,
                    height: 622.0,
                    child: Stack(
                      children: <Widget>[
                        Transform.translate(
                          offset: Offset(0.0, 574.0),
                          child:
                              // Adobe XD layer: 'Next' (component)
                              SizedBox(
                            width: 327.0,
                            height: 48.0,
                            child: Stack(
                              children: <Widget>[
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(0.0, 0.0, 327.0, 48.0),
                                  size: Size(327.0, 48.0),
                                  pinLeft: true,
                                  pinRight: true,
                                  pinTop: true,
                                  pinBottom: true,
                                  child: Container(
                                    child: Center(
                                      child: Icon(
                                        Icons.arrow_forward,
                                        color: Colors.white,
                                        size: 40.0,
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4.0),
                                      color: const Color(0xff2699fb),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Text(
                          'Form',
                          style: TextStyle(
                            fontFamily: 'Arial',
                            fontSize: 20,
                            color: const Color(0xff2699fb),
                            fontWeight: FontWeight.w700,
                            height: 1.5,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Transform.translate(
                          offset: Offset(0.0, 58.0),
                          child:
                              // Adobe XD layer: 'Input' (group)
                              SizedBox(
                            width: 327.0,
                            height: 50.0,
                            child: Stack(
                              children: <Widget>[
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(0.0, 0.0, 327.0, 50.0),
                                  size: Size(327.0, 50.0),
                                  pinLeft: true,
                                  pinRight: true,
                                  pinTop: true,
                                  pinBottom: true,
                                  child: Container(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: null,
                                            counterText: ''),
                                        maxLength: 25,
                                        autofocus: true,
                                        inputFormatters: [
                                          // ignore: deprecated_member_use
                                          WhitelistingTextInputFormatter(
                                              RegExp("[A-Z a-z ก-๙]"))
                                        ],
                                        onChanged: (String value) {
                                          print(value);
                                        },
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      color: const Color(0xffffffff),
                                      border: Border.all(
                                          width: 1.0,
                                          color: const Color(0xffbce0fd)),
                                    ),
                                  ),
                                ),
                                Pinned.fromSize(
                                  bounds:
                                      Rect.fromLTWH(265.0, 20.0, 50.0, 11.0),
                                  size: Size(330.0, 50.0),
                                  pinRight: true,
                                  fixedWidth: true,
                                  fixedHeight: true,
                                  child: Text(
                                    'FirstName',
                                    style: TextStyle(
                                      fontFamily: 'Arial',
                                      fontSize: 10,
                                      color: const Color(0xff2699fb),
                                    ),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(0.0, 124.0),
                          child:
                              // Adobe XD layer: 'Input' (group)
                              SizedBox(
                            width: 327.0,
                            height: 50.0,
                            child: Stack(
                              children: <Widget>[
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(0.0, 0.0, 327.0, 50.0),
                                  size: Size(327.0, 50.0),
                                  pinLeft: true,
                                  pinRight: true,
                                  pinTop: true,
                                  pinBottom: true,
                                  child: Container(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: null,
                                          counterText: '',
                                        ),
                                        maxLength: 25,
                                        inputFormatters: [
                                          // ignore: deprecated_member_use
                                          WhitelistingTextInputFormatter(
                                              RegExp("[A-Z a-z ก-๙]"))
                                        ],
                                        onChanged: (String value) {
                                          print(value);
                                        },
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      color: const Color(0xffffffff),
                                      border: Border.all(
                                          width: 1.0,
                                          color: const Color(0xffbce0fd)),
                                    ),
                                  ),
                                ),
                                Pinned.fromSize(
                                  bounds:
                                      Rect.fromLTWH(265.0, 20.0, 46.0, 11.0),
                                  size: Size(327.0, 50.0),
                                  pinRight: true,
                                  fixedWidth: true,
                                  fixedHeight: true,
                                  child: Text(
                                    'LastName',
                                    style: TextStyle(
                                      fontFamily: 'Arial',
                                      fontSize: 10,
                                      color: const Color(0xff2699fb),
                                    ),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(0.0, 190.0),
                          child:
                              // Adobe XD layer: 'Input' (group)
                              SizedBox(
                            width: 327.0,
                            height: 50.0,
                            child: Stack(
                              children: <Widget>[
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(0.0, 0.0, 327.0, 50.0),
                                  size: Size(327.0, 50.0),
                                  pinLeft: true,
                                  pinRight: true,
                                  pinTop: true,
                                  pinBottom: true,
                                  child: Container(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: null,
                                          counterText: '',
                                        ),
                                        maxLines: 5,
                                        onChanged: (String value) {
                                          print(value);
                                        },
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      color: const Color(0xffffffff),
                                      border: Border.all(
                                          width: 1.0,
                                          color: const Color(0xffbce0fd)),
                                    ),
                                  ),
                                ),
                                Pinned.fromSize(
                                  bounds:
                                      Rect.fromLTWH(274.0, 20.0, 37.0, 11.0),
                                  size: Size(327.0, 50.0),
                                  pinRight: true,
                                  fixedWidth: true,
                                  fixedHeight: true,
                                  child: Text(
                                    'Address',
                                    style: TextStyle(
                                      fontFamily: 'Arial',
                                      fontSize: 10,
                                      color: const Color(0xff2699fb),
                                    ),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(0.0, 256.0),
                          child:
                              // Adobe XD layer: 'Input' (group)
                              SizedBox(
                            width: 327.0,
                            height: 50.0,
                            child: Stack(
                              children: <Widget>[
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(0.0, 0.0, 327.0, 50.0),
                                  size: Size(327.0, 50.0),
                                  pinLeft: true,
                                  pinRight: true,
                                  pinTop: true,
                                  pinBottom: true,
                                  child: Container(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: null,
                                          counterText: '',
                                        ),
                                        maxLength: 5,
                                        keyboardType: TextInputType.number,
                                        inputFormatters: [
                                          // ignore: deprecated_member_use
                                          WhitelistingTextInputFormatter(
                                              RegExp("[0-9]"))
                                        ],
                                        onChanged: (String value) {
                                          print(value);
                                        },
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      color: const Color(0xffffffff),
                                      border: Border.all(
                                          width: 1.0,
                                          color: const Color(0xffbce0fd)),
                                    ),
                                  ),
                                ),
                                Pinned.fromSize(
                                  bounds:
                                      Rect.fromLTWH(283.0, 20.0, 28.0, 11.0),
                                  size: Size(327.0, 50.0),
                                  pinRight: true,
                                  fixedWidth: true,
                                  fixedHeight: true,
                                  child: Text(
                                    'Postal',
                                    style: TextStyle(
                                      fontFamily: 'Arial',
                                      fontSize: 10,
                                      color: const Color(0xff2699fb),
                                    ),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(0.0, 322.0),
                          child:
                              // Adobe XD layer: 'Input' (group)
                              SizedBox(
                            width: 327.0,
                            height: 50.0,
                            child: Stack(
                              children: <Widget>[
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(0.0, 0.0, 327.0, 50.0),
                                  size: Size(327.0, 50.0),
                                  pinLeft: true,
                                  pinRight: true,
                                  pinTop: true,
                                  pinBottom: true,
                                  child: Container(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: null,
                                          counterText: '',
                                        ),
                                        maxLength: 10,
                                        keyboardType: TextInputType.number,
                                        inputFormatters: [
                                          // ignore: deprecated_member_use
                                          WhitelistingTextInputFormatter(
                                              RegExp("[0-9]"))
                                        ],
                                        onChanged: (String value) {
                                          print(value);
                                        },
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      color: const Color(0xffffffff),
                                      border: Border.all(
                                          width: 1.0,
                                          color: const Color(0xffbce0fd)),
                                    ),
                                  ),
                                ),
                                Pinned.fromSize(
                                  bounds:
                                      Rect.fromLTWH(282.0, 20.0, 29.0, 11.0),
                                  size: Size(327.0, 50.0),
                                  pinRight: true,
                                  fixedWidth: true,
                                  fixedHeight: true,
                                  child: Text(
                                    'Phone',
                                    style: TextStyle(
                                      fontFamily: 'Arial',
                                      fontSize: 10,
                                      color: const Color(0xff2699fb),
                                    ),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(0.0, 388.0),
                          child:
                              // Adobe XD layer: 'Input' (group)
                              SizedBox(
                            width: 327.0,
                            height: 50.0,
                            child: Stack(
                              children: <Widget>[
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(0.0, 0.0, 327.0, 50.0),
                                  size: Size(327.0, 55.0),
                                  pinLeft: true,
                                  pinRight: true,
                                  pinTop: true,
                                  pinBottom: true,
                                  child: Container(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: DateTimeFormField(
                                        mode: DateTimeFieldPickerMode.date,
                                        dateFormat: DateFormat.yMd(),
                                        onDateSelected: (DateTime value) {
                                          print(value);
                                        },
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      color: const Color(0xffffffff),
                                      border: Border.all(
                                          width: 1.0,
                                          color: const Color(0xffbce0fd)),
                                    ),
                                  ),
                                ),
                                Pinned.fromSize(
                                  bounds:
                                      Rect.fromLTWH(254.0, 20.0, 60.0, 11.0),
                                  size: Size(327.0, 50.0),
                                  pinRight: true,
                                  fixedWidth: true,
                                  fixedHeight: true,
                                  child: Text(
                                    'RecieveDate',
                                    style: TextStyle(
                                      fontFamily: 'Arial',
                                      fontSize: 10,
                                      color: const Color(0xff2699fb),
                                    ),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
