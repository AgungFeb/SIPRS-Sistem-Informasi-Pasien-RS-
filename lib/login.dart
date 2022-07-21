// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_label

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'forgotpassword.dart';
import 'dashboard.dart';
import 'register.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isRememberMe = false;

  Widget buildEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Email',
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 6,
                  offset: Offset(0, 2),
                ),
              ]),
          height: 60,
          child: TextField(
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(color: Colors.black87),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14),
                  prefixIcon: Icon(Icons.email,
                      color: Color.fromARGB(102, 28, 118, 192)),
                  hintText: 'Email',
                  hintStyle: TextStyle(
                    color: Colors.black38,
                  ))),
        )
      ],
    );
  }

  Widget buildPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Password',
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 6,
                  offset: Offset(0, 2),
                ),
              ]),
          height: 60,
          child: TextField(
              obscureText: true,
              style: TextStyle(color: Colors.black87),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14),
                  prefixIcon: Icon(Icons.lock,
                      color: Color.fromARGB(102, 28, 118, 192)),
                  hintText: 'Password',
                  hintStyle: TextStyle(
                    color: Colors.black38,
                  ))),
        )
      ],
    );
  }

  Widget buildForgotPass() {
    return Container(
        alignment: Alignment.centerRight,
        child: FlatButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Forgotpassword();
            }));
          },
          padding: EdgeInsets.only(right: 0),
          child: Text('Forgot Password?',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              )),
        ));
  }

  Widget buildRemember() {
    return Container(
      height: 20,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.white),
            child: Checkbox(
                value: isRememberMe,
                checkColor: Color.fromARGB(102, 28, 118, 192),
                activeColor: Colors.white,
                onChanged: (value) {
                  setState(() {
                    isRememberMe = true;
                  });
                }),
          ),
          Text('Remember Me',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold))
        ],
      ),
    );
  }

  Widget buildTombol() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Dashboard();
          }));
        },
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: Colors.white,
        child: Text(
          'LOGIN',
          style: TextStyle(
              color: Color.fromARGB(102, 28, 118, 192),
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget buildRegister() {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return Register();
        }));
      },
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
                text: 'Belum punya Akun? ',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500)),
            TextSpan(
                text: 'Daftar',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold))
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(children: <Widget>[
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      // ignore: prefer_const_literals_to_create_immutables
                      colors: [
                    Color.fromARGB(102, 71, 144, 204),
                    Color.fromARGB(102, 28, 118, 192),
                    Color.fromARGB(102, 40, 126, 196),
                    Color.fromARGB(102, 54, 134, 199),
                  ])),
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 120),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'LOGIN',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 50),
                    buildEmail(),
                    SizedBox(height: 20),
                    buildPassword(),
                    buildForgotPass(),
                    buildRemember(),
                    buildTombol(),
                    buildRegister(),
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
