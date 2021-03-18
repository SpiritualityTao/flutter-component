import 'package:flutter/material.dart';

class FlexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("Flex Page"),
      ),

      body: Flex(
        direction:Axis.vertical,
        children: <Widget>[
          Flex(
            direction:Axis.horizontal,
            children: <Widget>[
              Container(
                  width: 50,
                  height: 100,
                  color: Colors.blue,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 100.0,
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 100.0,
                    color: Colors.green,
                  ),
                ),
            ]
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: 50,
              margin: EdgeInsets.only(left: 0,top: 0,right: 342,bottom: 0),
              color: Colors.red,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: 50,
              margin: EdgeInsets.only(left: 0,top: 0,right: 342,bottom: 0),
              color: Colors.green,
            ),
          ),
        ]
      )
    );
  }
}