// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_label

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dashboard.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Dashboard();
              }));
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.blue,
            height: MediaQuery.of(context).size.height * 0.3,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://akcdn.detik.net.id/community/media/visual/2022/04/01/manga-one-piece_43.webp?w=700&q=90"),
                        radius: 50,
                      ),
                      Positioned(
                          bottom: 3,
                          right: 2,
                          child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 15,
                              child: Icon(Icons.edit)))
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Monkey D. Luffy",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "22-54-35",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            child: Container(
              child: Column(
                children: <Widget>[
                  Text("PROFIL PENGGUNA"),
                  Divider(),
                  ListTile(
                    title: Text("Alamat"),
                    subtitle: Text("East Blue"),
                    leading: Icon(Icons.location_on),
                  ),
                  ListTile(
                    title: Text("Email"),
                    subtitle: Text("nikumania@gmail.com"),
                    leading: Icon(Icons.email),
                  ),
                  ListTile(
                    title: Text("No Hp"),
                    subtitle: Text("082332689730"),
                    leading: Icon(Icons.phone),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
