import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("Button Page"),
      ),

      body: Center(
        child:Container(
          color: Colors.red,
          width: 300,
          height: 300,
          padding: EdgeInsets.all(30),
          margin: EdgeInsets.only(left: 90,top: 0,right: 0,bottom: 0),
          transform: Matrix4.rotationZ(0.5),
          child: Align(
            alignment: Alignment.bottomRight,
            child:Text("Hello Container", style:TextStyle(fontSize:20.0, color:Colors.blue)),
          )
        )
      )
    );
  }
}