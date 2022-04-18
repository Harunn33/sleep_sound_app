import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:sleep_soundss/cevrimdisi.dart';
import 'package:sleep_soundss/main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 0, left: 0),
              child: Center(
                child: RiveAnimation.asset(
                  'animasyon/xxx.riv',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Container(
                child: Center(
                  child: Text(
                    "Facebook İle Giriş Yap",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromRGBO(59, 89, 152, 1),
                ),
                width: 300,
                height: 40,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 350),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CevrimDisi(
                                active: false,
                              )));
                },
                child: Container(
                  child: Center(
                    child: Text(
                      "Çevrimdışı Giriş",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.white),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red,
                  ),
                  width: 300,
                  height: 40,
                ),
              ),
            ),
          ),
        ]),
        backgroundColor: Colors.black,
      ),
    );
  }
}
