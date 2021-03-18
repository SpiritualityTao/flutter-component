import 'package:componentproject/detail.dart';
import 'package:flutter/material.dart';
import 'list.dart';
import 'detail.dart';
import 'button.dart';
import 'container.dart';
import 'container2.dart';
import 'flex.dart';
import 'animate.dart';
import 'animate2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        "ListPage":(context) => ListPage(),
        "DetailPage":(context) => DetailPage(),
        "ButtonPage":(context) => ButtonPage(),
        "ContainerPage":(context) => ContainerPage(),
        "ContainerPage2":(context) => ContainerPage2(),
        "FlexPage":(context) => FlexPage(),
        "AnimatePage":(context) => AnimatePage(),
        "AnimatePage2":(context) => AnimatePage2(),
      },
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text("I'm Title")),
      body: Center(
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children: <Widget>[
              OutlinedButton(
                  child: Text("ListPage"),
                  onPressed: () {
                    Navigator.pushNamed(context, "ListPage");
                  },
              ),
              OutlinedButton(
                  child: Text("Page2" ),
                  onPressed: () {},
              ),
              OutlinedButton(
                  child: Text("ButtonPage" ),
                  onPressed: () {
                    Navigator.pushNamed(context, "ButtonPage");
                  },
              ),
              OutlinedButton(
                  child: Text("ContainerPage" ),
                  onPressed: () {
                    Navigator.pushNamed(context, "ContainerPage");
                  },
              ),
              OutlinedButton(
                  child: Text("ContainerPage2" ),
                  onPressed: () {
                    Navigator.pushNamed(context, "ContainerPage2");
                  },
              ),
              OutlinedButton(
                  child: Text("FlexPage" ),
                  onPressed: () {
                    Navigator.pushNamed(context, "FlexPage");
                  },
              ),
              OutlinedButton(
                  child: Text("AnimatePage" ),
                  onPressed: () {
                    Navigator.pushNamed(context, "AnimatePage");
                  },
              ),
              OutlinedButton(
                  child: Text("AnimatePage2" ),
                  onPressed: () {
                    Navigator.pushNamed(context, "AnimatePage2");
                  },
              ),
            ],
          ),
        ),
    );
  }
} 