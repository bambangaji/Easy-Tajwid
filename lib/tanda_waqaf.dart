import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:skripsi/about.dart';
import 'package:skripsi/home_page.dart';
import 'package:skripsi/hukum_gunnah.dart';
import 'package:skripsi/hukum_qalqalah.dart';
import 'package:skripsi/ilmu_tajwid.dart';
import 'package:skripsi/nun_mati.dart';

class Tanda_Waqaf extends StatefulWidget {
  @override
  _Tanda_WaqafState createState() => _Tanda_WaqafState();
}

class _Tanda_WaqafState extends State<Tanda_Waqaf> {
  final assetsAudioPlayer = AssetsAudioPlayer();
  bool isPlaying = false;
  playAudio() async {
    assetsAudioPlayer.open(
      Audio("assets/audio/gunnah.mp3"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              // child: Text(''),
              decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage("assets/img/unpam.jpg")),
                color: Colors.white,
              ),
            ),
            Container(
              // color: Colors.greenAccent,
              child: ListTile(
                title: Text('Home'),
                onTap: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(pageBuilder: (context, _, __) {
                      return HomePage();
                    }, transitionsBuilder: (_, __, ___, Widget child) {
                      return child;
                    }),
                  );
                },
              ),
            ),
            ListTile(
              title: Text('Ilmu Tajwid'),
              onTap: () {
                Navigator.of(context).push(
                  PageRouteBuilder(pageBuilder: (context, _, __) {
                    return MenuTajwid();
                  }, transitionsBuilder: (_, __, ___, Widget child) {
                    return child;
                  }),
                );
              },
            ),
            ListTile(
              title: Text('Hukum Nun Mati / Tanwin'),
              onTap: () {
                Navigator.of(context).push(
                  PageRouteBuilder(pageBuilder: (context, _, __) {
                    return Nun_Mati();
                  }, transitionsBuilder: (_, __, ___, Widget child) {
                    return child;
                  }),
                );
              },
            ),
            ListTile(
              title: Text('Hukum Gunnah'),
              onTap: () {
                Navigator.of(context).push(
                  PageRouteBuilder(pageBuilder: (context, _, __) {
                    return Hukum_Gunnah();
                  }, transitionsBuilder: (_, __, ___, Widget child) {
                    return child;
                  }),
                );
              },
            ),
            ListTile(
              title: Text('Hukum Qalqalah'),
              onTap: () {
                Navigator.of(context).push(
                  PageRouteBuilder(pageBuilder: (context, _, __) {
                    return Hukum_Qalqalah();
                  }, transitionsBuilder: (_, __, ___, Widget child) {
                    return child;
                  }),
                );
              },
            ),
            Container(
              color: Colors.greenAccent,
              child: ListTile(
                title: Text('Tanda Waqaf'),
                onTap: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(pageBuilder: (context, _, __) {
                      return Tanda_Waqaf();
                    }, transitionsBuilder: (_, __, ___, Widget child) {
                      return child;
                    }),
                  );
                },
              ),
            ),
            ListTile(
              title: Text('About Me'),
              onTap: () {
                Navigator.of(context).push(
                  PageRouteBuilder(pageBuilder: (context, _, __) {
                    return About();
                  }, transitionsBuilder: (_, __, ___, Widget child) {
                    return child;
                  }),
                );
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Tanda Waqaf"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/img/prayer.png"))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25.0, 25, 25, 0),
            child: RichText(
              text: TextSpan(
                text: 'Tanda Waqaf  ',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                children: <TextSpan>[
                  TextSpan(
                    text:
                        'ialah tanda berhenti dalam Al Qur’an baik di tengah ayat maupun di akhir ayat. Tanda Waqaf teresebut antara lain :',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      // decoration: TextDecoration.underline,
                      decorationStyle: TextDecorationStyle.wavy,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(25.0, 5, 25, 0),
              child:
                  Text("لا = Waqaf Laa, bermaksud bacaan Dilarang berhenti."),
            ),
          ),
          Container(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(25.0, 5, 25, 0),
              child: Text("ﻣ  = Waqaf Lazim, bermaksud bacaan Harus berhenti."),
            ),
          ),
          Container(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(25.0, 5, 25, 0),
              child: Text(
                  "ج = Waqaf Jaiz, bermaksud bacaan Boleh lanjut, namun disarankan untuk berhenti"),
            ),
          ),
          Container(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(25.0, 5, 25, 0),
              child: Text(
                  "ص = Waqaf Murakhas, bermaksud bacaan Lebih baik untuk tidak berhenti namun diperbolehkan berhenti saat darurat tanpa mengubah makna."),
            ),
          ),
          Container(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(25.0, 5, 25, 0),
              child: Text(
                  "قلى = Waqful Aula, bermaksud bacaan Sebaiknya berhenti lebih utama kemudian disambung."),
            ),
          ),
          Container(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(25.0, 5, 25, 0),
              child: Text(
                  "صلى = Washlul Aula, bermaksud bacaan Sebaiknya disambung lebih utama."),
            ),
          ),
          Container(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(25.0, 5, 25, 0),
              child: Text(
                  "؞___؞ = Waqaf Mua’naqah bermaksud bacaan Berhenti di salah satu tanda titik tiga tersebut."),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(10.0),
          //   child: FlatButton(
          //       onPressed: () => {playAudio()},
          //       child: Row(
          //         children: [Text("Audio"), Icon(Icons.audiotrack)],
          //       )),
          // )
        ],
      ),
    );
  }
}
