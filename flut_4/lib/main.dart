import 'package:flutter/material.dart';

class MyBody extends StatelessWidget {
  Widget build (BuildContext context) {
    return Center (
      child: Column (
        children: <Widget>[
          Text('What the Fuck?'),
          FlatButton(onPressed: null,
            child: Text('PUSH ME'),
            color: Colors.indigo,
            textColor: Colors.white,
          )
        ],
      ),
    );
  }
}


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MyApp(),
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text('TESTING VERSION'),
          centerTitle: true,
        ),
      ),
    );
  }
}

// class PhContact extends StatelessWidget {
//
//  @override
//  Widget build(BuildContext context) {
//    return Image(
//      image: Image.asset('image/photoContact.jpg'),
//      fit: BoxFit.cover,
//    );
//  }
// }
