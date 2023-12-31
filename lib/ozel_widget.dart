import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Custom Widget",
        home: Scaffold(
          appBar: AppBar(
            title: Text("Menu"),
          ),
          body: Body(),
        ));
  }
}

class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Material(
      color: Colors.lightBlue,
      child: Text(
        "Uygulama Gövdesi",
        textDirection: TextDirection.ltr,
        style: TextStyle(color: Colors.white, fontSize: 25.0),
      ),
    );
  }

}
