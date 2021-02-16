import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'MainPage.dart';

class Intro extends StatefulWidget {
  Intro({
    Key key,
  }) : super(key: key);

  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
        seconds: 5,
        navigateAfterSeconds: new MainPage(),
        image: new Image.network(
            'https://scontent.fhdy3-1.fna.fbcdn.net/v/t1.0-9/26805515_921428208014342_8912582710069024276_n.jpg?_nc_cat=109&ccb=3&_nc_sid=19026a&_nc_eui2=AeHBKS6NH_NtSerJLIR03eFsyluCbhxJa17KW4JuHElrXuB9OvqgD1dMxYSF2l2PrVvtJiZDzTVYmwJkQfAnES-w&_nc_ohc=rs1_UDhVJNgAX8ztbNh&_nc_ht=scontent.fhdy3-1.fna&oh=4ec22a73c479777c2e613894a17e304f&oe=60514703'),
        backgroundColor: Colors.black,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        loaderColor: Colors.red);
  }
}
