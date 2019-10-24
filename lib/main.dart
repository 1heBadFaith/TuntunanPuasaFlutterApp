import 'package:flutter/material.dart';
import 'TampilSyarat.dart';
import 'TampilRukun.dart';
import 'TampilSunnah.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Colors.blue,
          canvasColor: Colors.blueAccent,
          appBarTheme: AppBarTheme(color: Colors.blue, elevation: 0)),
      home: HomeUtama(),
    );
  }
}

class HomeUtama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(icon: Icon(Icons.info_outline)
              , onPressed: () {

            AlertDialog(
              title: Text('Tentang Saya'),
              content: new Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _buildAboutMe()
                ],
              ),
              actions: <Widget>[
                new FlatButton(
                    onPressed: (){
                      Navigator.of(context);
                    },
                    child: const Text('Close'))
              ],
            );
              }),
          SizedBox(
            width: 20.0,
          ),
        ],
      ),

      body: Column(
        children: <Widget>[
          Text('Tuntunan Puasa',style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
          ListView(
            children: <Widget>[
              _itemMenuUtama(context, "Syarat Puasa", TampilSyarat(), backgroundImage('https://cdn.muslim.or.id/wp-content/uploads/2010/08/empat-boleh-batal-puasa-810x500.jpg')),
              _itemMenuUtama(context, "Rukun Puasa", TampilRukun(), backgroundImage('https://cdn0-production-images-kly.akamaized.net/3qFKMXY91K7WSyzBpGyqA1LiBwI=/1280x720/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/2795985/original/098734300_1556940282-shutterstock_1321626908.jpg')),
              _itemMenuUtama(context, "Sunnah Puasa", TampilSunnah(), backgroundImage(''))
            ],
          )
        ],
      )
    );
  }
}

Widget _itemMenuUtama (BuildContext context, String judul, Widget tampilan, Widget background){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
    child: Container(
      child: Card(
          elevation: 1.0,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Stack(
          children: <Widget>[
            background
          ],
        ),
      ),
    )
  );
}

Widget _buildAboutMe() {
  return new RichText(
      text: new TextSpan(
        text: 'Hai Perkenalkan Nama Saya Muhammad Azhar najib dan saya tinggal di depok, saya lahir tanggal 18 Oktober 2005',
        style: const TextStyle(color: Colors.black),
        children: <TextSpan>[
          const TextSpan(text: 'dan juga azhar memiliki beberapa hobi yang agak aneh')
        ]
      ));
}

void openNewSreen(BuildContext context, Widget screen) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
}

Widget backgroundImage(String imageURL) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        image: DecorationImage(
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.3), BlendMode.darken),
            image: NetworkImage(imageURL))),
  );
}

