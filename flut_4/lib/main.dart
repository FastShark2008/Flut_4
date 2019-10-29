import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyBody extends StatelessWidget {
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text('What the Fuck?'),
          FlatButton(
            onPressed: () async {
              const url = 'https://flutter.su';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'DON"T WORKING $url';
              }
            },
            child: Text('PUSH ME'),
            color: Colors.indigo,
            textColor: Colors.white,
          )
        ],
      ),
    );
  }
}

class NewsBoxFavorite extends StatefulWidget {
  final int _num;
  final bool _like;
  NewsBoxFavorite(this._num, this._like);

  @override
  createState() => NewsBoxFavoriteState(_num, _like);
}

class NewsBoxFavoriteState extends State<NewsBoxFavorite> {
  int num;
  bool like;
  NewsBoxFavoriteState(this.num, this.like);

  void pressButton() {
    setState(() {
      like = !like;

      if (like) {
        num++;
      } else {
        num--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('In Favorites $num', textAlign: TextAlign.center),
        IconButton(
            icon: Icon(like ? Icons.star : Icons.star_border,
            color: Colors.blue[500]),
            onPressed: pressButton),
      ],
    );
  }
}

class NewsBox extends StatelessWidget {
  final String _title;
  final String _text;
  String _imageurl;
  int _num;
  bool _like;

  NewsBox(
      this._title,
      this._text,
      {String imageurl, int num = 0, bool like = false}) {
    _imageurl = imageurl;
    _num = num;
    _like = like;
  }

  @override
  Widget build(BuildContext context) {
    if (_imageurl != null && _imageurl != '')
      return Container(
        color: Colors.black12,
        height: 100.0,
        child: Row(
          children: [
            Image.network(_imageurl,
                width: 100.0, height: 100.0, fit: BoxFit.cover),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5.0),
                child: Column(
                  children: [
                    Text(_title,
                        style: TextStyle(fontSize: 20.0),
                        overflow: TextOverflow.ellipsis),
                    Expanded(
                      child: Text(_text,
                          softWrap: true, textAlign: TextAlign.justify),
                    )
                  ],
                ),
              ),
            ),
            NewsBoxFavorite(_num, _like),
          ],
        ),
      );

    return Container(
      color: Colors.black12,
      height: 100.0,
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(5.0),
              child: Column(
                children: [
                  Text(_title,
                      style: TextStyle(fontSize: 20.0),
                      overflow: TextOverflow.ellipsis),
                  Expanded(
                    child: Text(_text,
                        softWrap: true, textAlign: TextAlign.justify),
                  ),
                ],
              ),
            ),
          ),
          NewsBoxFavorite(_num, _like),
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
        body: NewsBox(
          'Simple text block for Title',
          'This text block for basic information about Title string. '
              'And I can see how it working. '
              'And bla bla bla bla',
          imageurl:
              'https://thepitcher.org/wp-content/uploads/2017/11/simples.jpg', num: 10,
        ),
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
