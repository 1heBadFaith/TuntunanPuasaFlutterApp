import 'package:flutter/material.dart';

class TampilSyarat extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Syarat Puasa'),
      ),

      body: PageView(
        children: <Widget>[
          syaratItem('Sehat', 'tidak dalam keadaan sakit'),
          syaratItem('Menetap', 'tidak dalam keadaan bersafar. Dalil kedua syarat ini adalah firman Allah Ta’ala'),
          syaratItem('Suci dari haidh dan nifas', 'Dari Mu’adzah dia berkata, Saya bertanya kepada Aisyah seraya berkata, Kenapa gerangan wanita yang haid mengqadha puasa dan tidak mengqadha shalat? Maka Aisyah menjawab, Apakah kamu dari golongan Haruriyah?  Aku menjawab, Aku bukan Haruriyah, akan tetapi aku hanya bertanya. Dia menjawab, Kami dahulu juga mengalami haid, maka kami diperintahkan untuk mengqadha puasa dan tidak diperintahkan untuk mengqadha shalat. Berdasarkan kesepakatan para ulama pula, wanita yang dalam keadaan haidh dan nifas tidak wajib puasa dan wajib mengqodho puasanya.'),
          syaratItem('Islam', 'Seseorang yang hendak berpuasa haruslah beragama Islam'),
          syaratItem('berakal', 'Seseorang muslim harus punya akal dan tidak sah jika yang puasa adalah orang gila'),
          syaratItem('Baligh', 'Hendaklah yang berpuasa harus berumur baligh'),
        ],
      ),
    );
  }
}

Widget syaratItem(String judul, String detail) {
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


