// ignore_for_file: prefer_const_constructors, unnecessary_new, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'login.dart';
import 'profile.dart';

void main(List<String> args) {
  runApp(new MaterialApp(
    home: Dashboard(),
  ));
}

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("MENU UTAMA"),
        backgroundColor: Colors.blue[700],
      ),
      backgroundColor: Colors.blue[100],
      drawer: new Drawer(
        child: ListView(children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: new Text("Monkey D. Luffy",
                style:
                    new TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0)),
            accountEmail: new Text("nikumania@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://akcdn.detik.net.id/community/media/visual/2022/04/01/manga-one-piece_43.webp?w=700&q=90"),
            ),
            decoration: new BoxDecoration(color: Colors.blue[700]),
          ),
          ListTile(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return Profile();
              }));
            },
            leading: Icon(Icons.person),
            title: Text("Profil"),
          ),
          ListTile(
            leading: Icon(Icons.vpn_key),
            title: Text("Ubah Password"),
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text("Informasi"),
          ),
          ListTile(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return Login();
              }));
            },
            leading: Icon(Icons.exit_to_app),
            title: Text("Log Out"),
          ),
        ]),
      ),
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            MyMenu(
                title: "Data Pasien", icon: Icons.person, warna: Colors.blue),
            MyMenu(
                title: "Riwayat Pengobatan",
                icon: Icons.history,
                warna: Colors.brown),
            MyMenu(
                title: "Jadwal Poli",
                icon: Icons.calendar_month,
                warna: Colors.grey),
            MyMenu(
                title: "Tarif",
                icon: Icons.attach_money_rounded,
                warna: Colors.yellow),
            MyMenu(
                title: "Daftar Online",
                icon: Icons.checklist,
                warna: Colors.red),
            MyMenu(
                title: "Saran & Pengaduan",
                icon: Icons.chat_rounded,
                warna: Colors.green),
          ],
        ),
      ),
    );
  }
}

class MyMenu extends StatelessWidget {
  MyMenu({required this.title, required this.icon, required this.warna});

  final String title;
  final IconData icon;
  final MaterialColor warna;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {},
        splashColor: Colors.blue,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                icon,
                size: 70.0,
                color: warna,
              ),
              Text(title, style: new TextStyle(fontSize: 17.0))
            ],
          ),
        ),
      ),
    );
  }
}
