import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MyBack();
    final MyTitle();






  }
  }

class MyBack extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Container(
        color: Colors.amber,
        );
  }
}

class MyTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Center(
      child: Scaffold([
        appBar: Text('SIMPLE TEXT'),
      ]
      ),
    )
  }
}