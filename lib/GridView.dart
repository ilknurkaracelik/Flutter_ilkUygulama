
import 'package:flutter/material.dart';

class GridViewDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 50,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context,int index){
                return Container(
                  alignment: Alignment.center,
                  color:Colors.green[100*((index)%7)],
                  child: Text("Bölüm $index",textAlign: TextAlign.center,),
                );
  });
  }
}



//return GridView.extent(
//       maxCrossAxisExtent: 100,
//       //crossAxisCount: 2,
//       //reverse: true,
//       padding: EdgeInsets.all(10.0),
//       crossAxisSpacing: 15,
//       mainAxisSpacing: 25,
//       //scrollDirection: Axis.horizontal,
//       children: <Widget>[
//         Container(
//           alignment: Alignment.center,
//           color: Colors.red[100],
//           child: Text("Bölüm 1",textAlign: TextAlign.center,),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.red[200],
//           child: Text("Bölüm 2",textAlign: TextAlign.center,),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.red[300],
//           child: Text("Bölüm 3",textAlign: TextAlign.center,),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.red[400],
//           child: Text("Bölüm 4",textAlign: TextAlign.center,),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.red[500],
//           child: Text("Bölüm 5",textAlign: TextAlign.center,),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.red[600],
//           child: Text("Bölüm 6",textAlign: TextAlign.center,),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.red[700],
//           child: Text("Bölüm 7",textAlign: TextAlign.center,),
//         ),
//
//       ],
//     );