import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> list = <Widget>[];

    var data = [
      {"id":1, "title":"测试数据111", "subtitle":"QWERTYUIOP"},
      {"id":2, "title":"测试数据222", "subtitle":"ASDFGHJKL"},
      {"id":3, "title":"测试数据333", "subtitle":"ZXCVBNM"},
      {"id":4, "title":"测试数据444", "subtitle":"159753"},
      {"id":5, "title":"测试数据555", "subtitle":"123456789"},
    ];

    for (var item in data) {
      print(item["title"]);

      list.add(ListTile(
        title: Text(item["title"], style:TextStyle(color: Colors.blue, fontSize:18.0)),
        subtitle: Text(item["subtitle"]),
        leading: Icon(Icons.fastfood, color:Colors.orange),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: (){
          Navigator.pushNamed(context, "DetailPage", arguments: item);
        },
      ));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("List Page"),
      ),
      body: Center(
        child: ListView(
          children: list,
        ),
      )
    );
  }
}