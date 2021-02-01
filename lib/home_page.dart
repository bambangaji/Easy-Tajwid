import 'package:flutter/material.dart';
import 'package:skripsi/about.dart';
import 'package:skripsi/hukum_gunnah.dart';
import 'package:skripsi/hukum_qalqalah.dart';
import 'package:skripsi/ilmu_tajwid.dart';
import 'package:skripsi/nun_mati.dart';
import 'package:skripsi/tanda_waqaf.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              color: Colors.greenAccent,
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
        title: Text("Easy Tajwid App"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text("Daftar fitur yang ada di dalam aplikasi"),
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
                            return MenuTajwid();
                          }, transitionsBuilder: (_, __, ___, Widget child) {
                            return child;
                          }),
                        )
                      },
                  child: Text(
                    "Ilmu Tajwid",
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
                            return Nun_Mati();
                          }, transitionsBuilder: (_, __, ___, Widget child) {
                            return child;
                          }),
                        )
                      },
                  child: Text(
                    "Hukum Nun Mati / Tanwin",
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
                            return Hukum_Gunnah();
                          }, transitionsBuilder: (_, __, ___, Widget child) {
                            return child;
                          }),
                        )
                      },
                  child: Text(
                    "Hukum Gunnah",
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
                            return Hukum_Qalqalah();
                          }, transitionsBuilder: (_, __, ___, Widget child) {
                            return child;
                          }),
                        )
                      },
                  child: Text(
                    "Hukum Qalqalah",
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
                            return Tanda_Waqaf();
                          }, transitionsBuilder: (_, __, ___, Widget child) {
                            return child;
                          }),
                        )
                      },
                  child: Text(
                    "Tanda Waqaf",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
