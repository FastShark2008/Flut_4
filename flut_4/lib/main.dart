import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(title: MyTitle()),
      body: Container(),
    );
  }
  }

class MyTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Center(
        child: Text('SIMPLE TEXT'),
    );
 }
}