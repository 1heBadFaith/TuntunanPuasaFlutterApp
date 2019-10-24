import 'package:flutter/material.dart';

class TampilRukun extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Rukun Puasa'),
      ),

      body: PageView(
        children: <Widget>[
          sunnahItem('Rukun Puasa', 'Berdasarkan kesepakatan para ulama, rukun puasa adalah menahan diri dari berbagai pembatal puasa mulai dari terbit fajar (yaitu fajar shodiq) hingga terbenamnya matahari'),
        ],
      ),
    );
  }
}

Widget sunnahItem(String judul, String detail) {
  return ListView(
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          judul,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
          textAlign: TextAlign.right,
        ),
      ),
      SizedBox(
        height: 40.0,
      ),
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          detail,
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18.0, height: 0.5),
          textAlign: TextAlign.justify,
        ),
      ),
    ],
  );
}


