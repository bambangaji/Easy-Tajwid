import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:skripsi/about.dart';
import 'package:skripsi/home_page.dart';
import 'package:skripsi/hukum_gunnah.dart';
import 'package:skripsi/hukum_qalqalah.dart';
import 'package:skripsi/ilmu_tajwid.dart';
import 'package:skripsi/nun_mati.dart';
import 'package:skripsi/tanda_waqaf.dart';

class Idgham_Bilagunnah extends StatefulWidget {
  @override
  _Idgham_BilagunnahState createState() => _Idgham_BilagunnahState();
}

class _Idgham_BilagunnahState extends State<Idgham_Bilagunnah> {
  final assetsAudioPlayer = AssetsAudioPlayer();
  bool isPlaying = false;
  playAudio() async {
    assetsAudioPlayer.open(
      Audio("assets/audio/Idhgam_bi_la_gunnah.mp3"),
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
        title: Text("Idhgam Bi La gunnah"),
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
              "Hukum Idhgam Bi La Gunnah berlaku apabila Nun Mati/Tanwin bertemu huruf ل ر dan dibaca menjadi suara huruf hijaiyah tersebut dengan tidak menggunakan suara yang berdengung. Contohnya :",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Text(
              "ذِكْرٌلِّلْعَلَمِيْنَ",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Text(
              "مِنْ رَّبِّهِمْ",
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
