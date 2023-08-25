//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class customScrollViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          title: Text("Sliver App Bar"),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
          expandedHeight: 250,
          flexibleSpace: FlexibleSpaceBar(
            title: Text("Sliver App Bar"),
            centerTitle: true,
          ),
        ),
      //  SliverList(
      //      delegate: SliverChildListDelegate(ListeElemanlari())
      //  )
      //  SliverGrid(
      //      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      //    delegate: SliverChildListDelegate(ListeElemanlari()),
      //  )
      ],
    );
  }

  List<Widget> ListeElemanlari() {
    return [
      Container(
        height: 100,
        color: Colors.green[200],
        alignment: Alignment.center,
        child: Text(
          "Bölüm 1",
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.green[300],
        alignment: Alignment.center,
        child: Text(
          "Bölüm 2",
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.green[400],
        alignment: Alignment.center,
        child: Text(
          "Bölüm 3",
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.blue[200],
        alignment: Alignment.center,
        child: Text(
          "Bölüm 4",
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.blue[300],
        alignment: Alignment.center,
        child: Text(
          "Bölüm 5",
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.blue[400],
        alignment: Alignment.center,
        child: Text(
          "Bölüm 5",
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.red[200],
        alignment: Alignment.center,
        child: Text(
          "Bölüm 6",
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.red[300],
        alignment: Alignment.center,
        child: Text(
          "Bölüm 7",
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.red[400],
        alignment: Alignment.center,
        child: Text(
          "Bölüm 8",
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ),
    ];
  }
}
