import 'package:flutter/material.dart';
import 'package:skripsi/about.dart';
import 'package:skripsi/home_page.dart';
import 'package:skripsi/hukum_gunnah.dart';
import 'package:skripsi/hukum_qalqalah.dart';
import 'package:skripsi/ilmu_tajwid.dart';
import 'package:skripsi/nun_mati/idgham.dart';
import 'package:skripsi/nun_mati/idhgham_.dart';
import 'package:skripsi/nun_mati/idzhar.dart';
import 'package:skripsi/nun_mati/ikhfa.dart';
import 'package:skripsi/nun_mati/iqlab.dart';
import 'package:skripsi/tanda_waqaf.dart';

class Nun_Mati extends StatefulWidget {
  @override
  _Nun_MatiState createState() => _Nun_MatiState();
}

class _Nun_MatiState extends State<Nun_Mati> {
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
            Container(
              color: Colors.greenAccent,
              child: ListTile(
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
            ListTile(
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
        title: Text("Hukum Nun Mati / Tanwin"),
      ),
      // body: Column(
      //   children: [
      // Padding(
      //   padding: const EdgeInsets.all(25.0),
      //   child: Expanded(
      //       child: RichText(
      //     text: TextSpan(
      //       text: 'Hukum Nun Mati / Tanwin',
      //       style: TextStyle(
      //           color: Colors.black, fontWeight: FontWeight.bold),
      //       children: <TextSpan>[
      //         TextSpan(
      //           text:
      //               ' Yaitu apabila Nun Mati / Tanwin bertemu dengan huruf-huruf tertentu sesuai dengan hukumnya',
      //           style: TextStyle(
      //             color: Colors.black,
      //             fontWeight: FontWeight.normal,
      //             // decoration: TextDecoration.underline,
      //             decorationStyle: TextDecorationStyle.wavy,
      //           ),
      //         ),
      //       ],
      //     ),
      //   )),
      // ),
      // Padding(
      //   padding: const EdgeInsets.all(10.0),
      //   child: Container(
      //     decoration: BoxDecoration(
      //         borderRadius: BorderRadius.circular(10),
      //         color: Colors.green[300]),
      //     width: double.infinity,
      //     child: FlatButton(
      //         onPressed: () => {
      //               Navigator.of(context).push(
      //                 PageRouteBuilder(pageBuilder: (context, _, __) {
      //                   return Ikhfa();
      //                 }, transitionsBuilder: (_, __, ___, Widget child) {
      //                   return child;
      //                 }),
      //               )
      //             },
      //         child: Text(
      //           "Ikhfa",
      //           style: TextStyle(color: Colors.white),
      //         )),
      //   ),
      // ),
      // Padding(
      //   padding: const EdgeInsets.all(10.0),
      //   child: Container(
      //     decoration: BoxDecoration(
      //         borderRadius: BorderRadius.circular(10),
      //         color: Colors.green[300]),
      //     width: double.infinity,
      //     child: FlatButton(
      //         onPressed: () => {
      //               Navigator.of(context).push(
      //                 PageRouteBuilder(pageBuilder: (context, _, __) {
      //                   return Iqlab();
      //                 }, transitionsBuilder: (_, __, ___, Widget child) {
      //                   return child;
      //                 }),
      //               )
      //             },
      //         child: Text(
      //           "Iqlab",
      //           style: TextStyle(color: Colors.white),
      //         )),
      //   ),
      // ),
      // Padding(
      //   padding: const EdgeInsets.all(10.0),
      //   child: Container(
      //     decoration: BoxDecoration(
      //         borderRadius: BorderRadius.circular(10),
      //         color: Colors.green[300]),
      //     width: double.infinity,
      //     child: FlatButton(
      //         onPressed: () => {
      //               Navigator.of(context).push(
      //                 PageRouteBuilder(pageBuilder: (context, _, __) {
      //                   return Idgham_Bigunnah();
      //                 }, transitionsBuilder: (_, __, ___, Widget child) {
      //                   return child;
      //                 }),
      //               )
      //             },
      //         child: Text(
      //           "Idhgam Bi Gunnah",
      //           style: TextStyle(color: Colors.white),
      //         )),
      //   ),
      // ),
      // Padding(
      //   padding: const EdgeInsets.all(10.0),
      //   child: Container(
      //     decoration: BoxDecoration(
      //         borderRadius: BorderRadius.circular(10),
      //         color: Colors.green[300]),
      //     width: double.infinity,
      //     child: FlatButton(
      //         onPressed: () => {
      //               Navigator.of(context).push(
      //                 PageRouteBuilder(pageBuilder: (context, _, __) {
      //                   return Idgham_Bilagunnah();
      //                 }, transitionsBuilder: (_, __, ___, Widget child) {
      //                   return child;
      //                 }),
      //               )
      //             },
      //         child: Text(
      //           "Idhgam Bi La Gunnah",
      //           style: TextStyle(color: Colors.white),
      //         )),
      //   ),
      // ),
      // Padding(
      //   padding: const EdgeInsets.all(10.0),
      //   child: Container(
      //     decoration: BoxDecoration(
      //         borderRadius: BorderRadius.circular(10),
      //         color: Colors.green[300]),
      //     width: double.infinity,
      //     child: FlatButton(
      //         onPressed: () => {
      //               Navigator.of(context).push(
      //                 PageRouteBuilder(pageBuilder: (context, _, __) {
      //                   return Idzhar();
      //                 }, transitionsBuilder: (_, __, ___, Widget child) {
      //                   return child;
      //                 }),
      //               )
      //             },
      //         child: Text(
      //           "Idzhar",
      //           style: TextStyle(color: Colors.white),
      //         )),
      //   ),
      // )
      //   ],
      // )
      body: Column(
        children: [
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Text(
          //     "Tajwid berasal dari kata جود يجود تجويدا yang artinya",
          //     style: TextStyle(
          //       fontSize: 16,
          //     ),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Text(
          //     "Memperindah,memperbaiki. Tajwid menurut bahasa adalah tahsin yaitu memperbaiki atau mendatangkan bacaan dengan baik. Sedangkan menurut istilah sehingga menjadi suatu bacaan yang baik. Ilmu Tajwid adalah pengetahuan tentang kaidah dan cara-cara membaca Al-Qur’an dengan sebaik-baiknya.",
          //     style: TextStyle(
          //       fontSize: 16,
          //     ),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RichText(
              text: TextSpan(
                text: 'Hukum Nun Mati / Tanwin',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                children: <TextSpan>[
                  TextSpan(
                    text:
                        ' Yaitu apabila Nun Mati / Tanwin bertemu dengan huruf-huruf tertentu sesuai dengan hukumnya',
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
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green[300]),
              width: double.infinity,
              child: FlatButton(
                  onPressed: () => {
                        Navigator.of(context).push(
                          PageRouteBuilder(pageBuilder: (context, _, __) {
                            return Ikhfa();
                          }, transitionsBuilder: (_, __, ___, Widget child) {
                            return child;
                          }),
                        )
                      },
                  child: Text(
                    "Ikhfa",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green[300]),
              width: double.infinity,
              child: FlatButton(
                  onPressed: () => {
                        Navigator.of(context).push(
                          PageRouteBuilder(pageBuilder: (context, _, __) {
                            return Iqlab();
                          }, transitionsBuilder: (_, __, ___, Widget child) {
                            return child;
                          }),
                        )
                      },
                  child: Text(
                    "Iqlab",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green[300]),
              width: double.infinity,
              child: FlatButton(
                  onPressed: () => {
                        Navigator.of(context).push(
                          PageRouteBuilder(pageBuilder: (context, _, __) {
                            return Idgham_Bigunnah();
                          }, transitionsBuilder: (_, __, ___, Widget child) {
                            return child;
                          }),
                        )
                      },
                  child: Text(
                    "Idhgam Bi Gunnah",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green[300]),
              width: double.infinity,
              child: FlatButton(
                  onPressed: () => {
                        Navigator.of(context).push(
                          PageRouteBuilder(pageBuilder: (context, _, __) {
                            return Idgham_Bilagunnah();
                          }, transitionsBuilder: (_, __, ___, Widget child) {
                            return child;
                          }),
                        )
                      },
                  child: Text(
                    "Idhgam Bi La Gunnah",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green[300]),
              width: double.infinity,
              child: FlatButton(
                  onPressed: () => {
                        Navigator.of(context).push(
                          PageRouteBuilder(pageBuilder: (context, _, __) {
                            return Idzhar();
                          }, transitionsBuilder: (_, __, ___, Widget child) {
                            return child;
                          }),
                        )
                      },
                  child: Text(
                    "Idzhar",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          )
          // FlatButton(
          //     onPressed: () => {playAudio()},
          //     child: Row(
          //       children: [Text("Audio"), Icon(Icons.audiotrack)],
          //     ))
        ],
      ),
    );
  }
}
