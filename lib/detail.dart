import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Page"),
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("我是Detail页面"),
            Text("id:${args['id']}"),
            Text("title:${args['title']}"),
            Text("subtitle:${args['subtitle']}"),
          ]
        ),
      )
    );
  }
}