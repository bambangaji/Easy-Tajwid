import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:skripsi/about.dart';
import 'package:skripsi/home_page.dart';
import 'package:skripsi/hukum_gunnah.dart';
import 'package:skripsi/hukum_qalqalah.dart';
import 'package:skripsi/ilmu_tajwid.dart';
import 'package:skripsi/nun_mati.dart';
import 'package:skripsi/tanda_waqaf.dart';

class Iqlab extends StatefulWidget {
  @override
  _IqlabState createState() => _IqlabState();
}

class _IqlabState extends State<Iqlab> {
  final assetsAudioPlayer = AssetsAudioPlayer();
  bool isPlaying = false;
  playAudio() async {
    assetsAudioPlayer.open(
      Audio("assets/audio/Iqlab.mp3"),
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
              child: Text(''),
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
            Container(
              // color: Colors.greenAccent,
              child: ListTile(
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
            ),
            Container(
              color: Colors.greenAccent,
              child: ListTile(
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
            ),
            ListTile(
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
        title: Text("Iqlab"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/img/ikhfa.png"))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Hukum Iqlab berlaku apabila Nun Mati/Tanwin bertemu huruf ب , Secara harfiah, Iqlab mempunyai arti menggantikan atau mengubah sesuatu dari bentuk aslinya.Contohnya : ",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Text(
              "مَنْ بَعَثَنَا",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Text(
              "جَزَاءًبِمَا",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          FlatButton(
              onPressed: () => {playAudio()},
              child: Row(
                children: [Text("Audio"), Icon(Icons.audiotrack)],
              ))
        ],
      ),
    );
  }
}
