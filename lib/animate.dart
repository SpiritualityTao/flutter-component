import 'package:flutter/material.dart';

class AnimatePage extends StatefulWidget {
  // @override
  // State<AnimatePage> createState() {
  //   // TODO: implement createState
  //   return _AnimatePage();
  // }

  State<AnimatePage> createState() => _AnimatePage();
}

class _AnimatePage extends State<AnimatePage> {

  bool _visible = true;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Animate Page")
      ),
      body: Center(
        child: Column(
          children:<Widget>[
            AnimatedOpacity(
              opacity: _visible ? 1.0:0.0,
              duration: Duration(milliseconds: 1000),
              child: Image.asset("images/logo.png"),
            ),

            ElevatedButton(
              child: Text("显示隐藏"),
              onPressed: (){
                  setState(() {
                    _visible=!_visible;
                  }
                  );
                },
            ),
          ]
        ),
      ),
    );
  }
}

