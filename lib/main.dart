import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
    routes: <String, WidgetBuilder>{
      "/Secondpage": (BuildContext context) => new SecondPage()
    },
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar:
          new AppBar(title: new Text("Home"), backgroundColor: Colors.orange),
      body: new Container(
          child: new Center(
        child: new Column(
             mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new IconButton(
              icon: new Icon(
                Icons.home,
                color: Colors.orange,
              ),
              iconSize: 50.0,
             onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context) => SecondPage()),);}
            ),
            new Text("Home")
          ],
        ),
      )),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: new Text("SecondPage"), backgroundColor: Colors.orangeAccent),
      body: new Container(
          child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new IconButton(
              icon: new Icon(
                Icons.favorite,
                color: Colors.orange,
              ),
              iconSize: 50.0,
              onPressed: null,
            ),
            new Text("SecondPage")
          ],
        ),
      )),
    );
  }
}
