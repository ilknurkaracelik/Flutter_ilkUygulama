import 'package:flutter/material.dart';
import 'package:untitled5/models/personel.dart';

import 'GridView.dart';
import 'customScrollViewWidget.dart';

void main() {
  runApp(MaterialApp(
        home: MyApp(
      )
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<PErsonel> personelListesi = [PErsonel("İlknur", "Karaçelik", 4),PErsonel("Ayşe","Fatma",7),PErsonel("Ahmet", "Saçak", 1)];


    var personeller=["Ilknur","Aslı","Zeynep","Güneş"];
    return Scaffold(
      appBar: AppBar(
        title: Text("Şirket Personel Uygulaması"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: personelListesi.length,
                itemBuilder: (BuildContext context , int index)
                {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage("https://docs.flutter.dev/assets/images/dash/dash-fainting.gif"),
                    ),
                    title: Text(personelListesi[index].ad+" "+personelListesi[index].soyad),
                    subtitle: Text("Kıdem Yılı:"+ personelListesi[index].kidem.toString()+" Unvan: "+personelListesi[index].getDurum),
                    trailing:  buildStatusIcon( personelListesi[index].kidem),
                    onTap: (){
                      print(personelListesi[index].ad+" "+personelListesi[index].soyad);
                    },
                    onLongPress: (){
                      print(personelListesi[index].ad+" "+personelListesi[index].soyad+" sağ tıklandı");
                    },
                  );
                }
            ),
          ),

          Center(
            child: ElevatedButton(
              child: Text("Sınav Sonucunu Getir"),
              onPressed: () {
                int puan = 35;
                String Mesaj = "";
                if (puan >= 50) {
                  Mesaj = "Geçti";
                } else if (puan >= 40) {
                  Mesaj = "Bütünlemeye Kaldı";
                } else {
                  Mesaj = "Kaldın";
                }
                var alert = AlertDialog(
                  title: Text("Sınav Sonucu"),
                  content: Text(Mesaj),
                );
                showDialog(
                    context: context, builder: (BuildContext context) => alert);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildStatusIcon(int kidem) {
    if(kidem<=3){
      return Icon(Icons.check_circle_outline);
    }
    else if(kidem<=6){
      return Icon(Icons.check_circle);
    }
    else{
      return Icon(Icons.done_outline);
    }
  }
}

//String SelamVer(){
//  DateTime simdi=new DateTime.now();
//  int saat=simdi.hour;
//
//  if(saat<12){
//    return "Gunaydın";
//  }
//  else if (saat<18 ){
//    return "İyi Gunler";
//  }
//  else {
//    return "İyi Akşamlar";
//  }
//}



//  runApp(MaterialApp(
//     home:Scaffold(
//         appBar: AppBar(
//           title: Text("Merhaba İlk Uygulama"),
//         ),
//       body:Center(
//         child: Text("Uygulamanın Gövdesi Burası"),
//       ),
//       ),
//     )
//   );

//void main()
// {
//   runApp(MaterialApp(
//     title: "Mobil Uygulamamız",
//     home:Scaffold(
//       appBar: AppBar(
//         title: Text("Uygulamanın Başlık Kısmı"),
//         backgroundColor: Colors.blue,
//       ),
//       body: Material(
//         color:Colors.lightBlueAccent,
//         child: Center(
//           child: Text("Merhaba Flutter",
//           textDirection: TextDirection.ltr,
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 40.0,
//             ),
//           ),
//         ),
//       ),
//     ),
//   ));
// }

//class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Şirket Mobil Uygulaması"),
//         backgroundColor: Colors.blue,
//       ),
//       body: Center(
//         child: ElevatedButton(
//           child: Text("Sınav Sonucunu Getir"),
//           onPressed: (){
//             int puan=35;
//             String Mesaj="";
//             if(puan>=50){
//               Mesaj="Geçti";
//             }
//             else if(puan>=40) {
//               Mesaj="Bütünlemeye Kaldı";
//             }
//             else {
//                 Mesaj="Kaldın";
//               }
//
//
//             var alert =AlertDialog(
//               title: Text("Sınav Sonucu"),
//               content: Text(Mesaj),
//             );
//             showDialog(context: context, builder: (BuildContext context)=>alert);
//           },
//         ),
//       ),
//     );
//   }
//
// }


// LİSTELER
//class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var personeller=["İlknur","Aslı","Zeynep","Güneş"];
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Şirket Mobil Uygulaması"),
//         backgroundColor: Colors.blue,
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//                 itemCount: personeller.length,
//                 itemBuilder: (BuildContext context , int index)
//                 {
//                   return Text(personeller[index]);
//                 }
//             ),
//           ),
//
//           Center(
//             child: ElevatedButton(
//               child: Text("Sınav Sonucunu Getir"),
//               onPressed: () {
//                 int puan = 35;
//                 String Mesaj = "";
//                 if (puan >= 50) {
//                   Mesaj = "Geçti";
//                 } else if (puan >= 40) {
//                   Mesaj = "Bütünlemeye Kaldı";
//                 } else {
//                   Mesaj = "Kaldın";
//                 }
//                 var alert = AlertDialog(
//                   title: Text("Sınav Sonucu"),
//                   content: Text(Mesaj),
//                 );
//                 showDialog(
//                     context: context, builder: (BuildContext context) => alert);
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }