import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyFriend());

class MyFriend extends StatelessWidget {
  final List<String> _heroImages = [
    "https://scontent.fhdy3-1.fna.fbcdn.net/v/t1.0-9/70776117_2460796980840806_2190249406165417984_o.jpg?_nc_cat=108&ccb=2&_nc_sid=8bfeb9&_nc_eui2=AeEc0ejSait7aADyqmTKNzvhF5NhUKO2CA8Xk2FQo7YIDzEMcxg1GFg18sonMg1KLhbqkyjzS5kVD_eE2r_twFar&_nc_ohc=rgzWTXBGWsQAX-vLq-w&_nc_ht=scontent.fhdy3-1.fna&oh=e61e379406eeef8f0b5980b03582fd92&oe=60183FC3",
    "https://scontent.fhdy3-1.fna.fbcdn.net/v/t1.0-9/526051_338670806228897_253855517_n.jpg?_nc_cat=111&ccb=2&_nc_sid=de6eea&_nc_eui2=AeFIPRm43pTVUCSjBXM1lgE-Ytv-ZNU9yzxi2_5k1T3LPLwz0qJlWHBtbmZTWdk9WBsOvRFjKW72dN5TiiFUdZiu&_nc_ohc=YOlX4gh8Z2cAX-5mLdy&_nc_ht=scontent.fhdy3-1.fna&oh=834407d66113a49eb646392a899c0f78&oe=601973F6",
    "https://scontent.fhdy3-1.fna.fbcdn.net/v/t1.0-9/10730197_336184289895091_5826388732771194127_n.jpg?_nc_cat=107&ccb=2&_nc_sid=174925&_nc_eui2=AeG92rSygg4m5A955xNnTtukoy8f_X7L8GKjLx_9fsvwYrzkzIu4aRcB3svy_i02axzRlxGzSkOmkN4QJJ1wjVJ1&_nc_ohc=md_vfr3lk9cAX8in_u5&_nc_oc=AQl9az9J30FR5T5DC_9FRXdlpB_4-thI-x-FpUB6xyNDFt7p5Q-Shm6pACKLn9bfwdjgG_rnhLW0uOS0E4bSs0x_&_nc_ht=scontent.fhdy3-1.fna&oh=193d85a6f45471105042a1e209100ac1&oe=601835A7",
    "https://scontent.fhdy3-1.fna.fbcdn.net/v/t1.0-9/39393061_2074046029332368_5264904695373103104_n.jpg?_nc_cat=110&ccb=2&_nc_sid=8bfeb9&_nc_eui2=AeGCB_aZSTiUfP0Pm4MmFYSbjd2jJvV2O-ON3aMm9XY74_op8xI9S1JSJESLEdOYqqizCPmzopZteSYuYUTPpEKO&_nc_ohc=zmkNsGb9U2gAX-uuzO3&_nc_ht=scontent.fhdy3-1.fna&oh=fba5ce47c9ac56d68c203eec8580e6bb&oe=601A3AEC",
  ];

  final List<String> _heroNames = [
    "หนึ่ง",
    "จิ๋ว",
    "อาร์ม",
    "ลิป",
  ];

  final List<String> _heroDetails = [
    "....",
    "...",
    "...",
    "...",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyFriend',
      home: Scaffold(
        appBar: AppBar(
          title: Text('MyFriend'),
          backgroundColor: Colors.orangeAccent,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                for (var i = 0; i < this._heroNames.length; i++)
                  Friend(this._heroNames[i], this._heroImages[i],
                      this._heroDetails[i])
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.orangeAccent,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
            ),
          ],
        ),
      ),
    );
  }
}

class Friend extends StatelessWidget {
  String _heroName;
  String _heroImage;
  String _heroDetail;

  Friend(this._heroName, this._heroImage, this._heroDetail, {Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: SizedBox(
        width: double.infinity,
        child: Card(
          color: Colors.grey[900],
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.white70, width: 1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: RaisedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) =>
                    _buildPopupDialog(context, this._heroDetail),
              );
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            padding: const EdgeInsets.all(0.0),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF0D47A1),
                    Color(0xFF42A5F5),
                  ],
                ),
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    height: 100,
                    width: 100,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(this._heroImage),
                      radius: 100,
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: ListTile(
                        title: Center(
                          child: Text(this._heroName,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                  color: Colors.white)),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buildPopupDialog(BuildContext context, text) {
  return new AlertDialog(
    title: const Text('ความในใจ'),
    content: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(text),
      ],
    ),
    actions: <Widget>[
      new FlatButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        textColor: Theme.of(context).primaryColor,
        child: const Text('Close'),
      ),
    ],
  );
}
