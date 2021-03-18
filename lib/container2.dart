import 'package:flutter/material.dart';

class ContainerPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("Container Page"),
      ),

      body: Center(
        child:Stack(
          children:<Widget>[
            Image.network("https://img-blog.csdnimg.cn/20181210151747299.jpg"),
            Positioned(
                bottom: 10,
                right: 20,
                child: Image.asset("images/logo.png",width: 100,)
              )
          ]
        ),
      )
    );
  }
}