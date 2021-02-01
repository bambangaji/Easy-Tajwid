import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:skripsi/about.dart';
import 'package:skripsi/home_page.dart';
import 'package:skripsi/hukum_qalqalah.dart';
import 'package:skripsi/ilmu_tajwid.dart';
import 'package:skripsi/nun_mati.dart';
import 'package:skripsi/tanda_waqaf.dart';

class Hukum_Gunnah extends StatefulWidget {
  @override
  _Hukum_GunnahState createState() => _Hukum_GunnahState();
}

class _Hukum_GunnahState extends State<Hukum_Gunnah> {
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
                  assetsAudioPlayer.pause();
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
                assetsAudioPlayer.pause();
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
                assetsAudioPlayer.pause();
                Navigator.of(context).push(
                  PageRouteBuilder(pageBuilder: (context, _, __) {
                    return Nun_Mati();
                  }, transitionsBuilder: (_, __, ___, Widget child) {
                    return child;
                  }),
                );
              },
            ),
            Container(
              color: Colors.greenAccent,
              child: ListTile(
                title: Text('Hukum Gunnah'),
                onTap: () {
                  assetsAudioPlayer.pause();
                  Navigator.of(context).push(
                    PageRouteBuilder(pageBuilder: (context, _, __) {
                      return Hukum_Gunnah();
                    }, transitionsBuilder: (_, __, ___, Widget child) {
                      return child;
                    }),
                  );
                },
              ),
            ),
            ListTile(
              title: Text('Hukum Qalqalah'),
              onTap: () {
                assetsAudioPlayer.pause();
                Navigator.of(context).push(
                  PageRouteBuilder(pageBuilder: (context, _, __) {
                    return Hukum_Qalqalah();
                  }, transitionsBuilder: (_, __, ___, Widget child) {
                    return child;
                  }),
                );
              },
            ),
            ListTile(
              title: Text('Tanda Waqaf'),
              onTap: () {
                assetsAudioPlayer.pause();
                Navigator.of(context).push(
                  PageRouteBuilder(pageBuilder: (context, _, __) {
                    return Tanda_Waqaf();
                  }, transitionsBuilder: (_, __, ___, Widget child) {
                    return child;
                  }),
                );
              },
            ),
            ListTile(
              title: Text('About Me'),
              onTap: () {
                assetsAudioPlayer.pause();
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
        title: Text("Hukum Gunnah"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/img/pray.png"))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25.0, 25, 25, 0),
            child: RichText(
              text: TextSpan(
                text: 'Hukum Gunnah ',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                children: <TextSpan>[
                  TextSpan(
                    text:
                        'Yaitu apabila huruf Nun dan Mim bertanda tasydid, dibaca mendengung.',
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
          Padding(
            padding: const EdgeInsets.fromLTRB(25.0, 5, 25, 0),
            child: Text(
                "Hukum Gunnah berlaku apabila huruf ن م bertasydid, sukun dan berharakat. Dibaca dengan suara yang keluar dari hidung atau dengung.Contohnya :"),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Text(
              "اِنَّ رَبَّهُمْ",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Text(
              "فَاُمُّهُ هَا وِيَةٌ",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: FlatButton(
                onPressed: () => {playAudio()},
                child: Row(
                  children: [Text("Audio"), Icon(Icons.audiotrack)],
                )),
          )
        ],
      ),
    );
  }
}
