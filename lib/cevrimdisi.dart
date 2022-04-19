import 'package:flutter/material.dart';
import 'package:sleep_soundss/classDraweMenu/navigatorManager.dart';

import 'package:sleep_soundss/main.dart';
import 'package:sleep_soundss/meditations.dart';
import 'package:sleep_soundss/premium.dart';
import 'package:sleep_soundss/privacy.dart';
import 'package:sleep_soundss/rate.dart';
import 'package:sleep_soundss/relaxMenu.dart';
import 'package:sleep_soundss/share.dart';
import 'package:sleep_soundss/sleepStories.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CevrimDisi(
        active: false,
      ),
    );
  }
}

class CevrimDisi extends StatelessWidget {
  bool active = false;

  CevrimDisi({required this.active});

 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CevrimiciGirisEkraniBody(),
        drawer: menuDrawer(),
      ),
    );
  }

  Widget menuDrawer() {
    return Drawer(
        backgroundColor: Color.fromARGB(255, 4, 32, 55),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(

                image: DecorationImage(
                  image: AssetImage("assets/images/river.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Row(
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.bottomStart,
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(35)),
                          child: Center(
                              child: Text(
                            "J",
                            style:
                                TextStyle(fontSize: 45, color: Colors.white),
                          )),
                        ),
                        Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(35)),
                            child: Center(
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.phone_enabled,
                                      size: 15,
                                    )))),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "RELAX & SLEEP SOUNDS",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    )
                  ],
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: Color.fromARGB(255, 21, 54, 80))),
                  height: 280,
                  // color: Colors.purple,
                  width: double.infinity,
                  child: ListView(
                    padding: EdgeInsets.only(top: 0),
                    children: [
                      NavigaterManager(iconName: "Relax",
                          fileName: "assets/images/relax.png",
                          file: RelaxMenu()),
                      
                      NavigaterManager(iconName: "Meditations",
                          fileName: "assets/images/yoga.png",
                          file: MeditationsPage(),
                          ),


                      NavigaterManager(iconName: "Sleep Stories",
                          fileName: "assets/images/sleep.png",
                          file:MainPage2() ,
                          ),

                      NavigaterManager(iconName: "Change Language",
                          fileName: "assets/images/otherLanguage.png",
                          file:MainPage() ,
                          ),
                      NavigaterManager(iconName: "Premium",
                          fileName: "assets/images/premium.png",
                          file:PremiumPage() ,
                          ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: Color.fromARGB(255, 21, 54, 80)),
                  ),
                  height: 280,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                            child: Text(
                              "Other",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15),
                            ),
                            alignment: Alignment.topLeft),
                      ),
                      NavigaterManager(iconName: "Share",
                          fileName: "assets/images/share.png",
                          file: SharePage(),
                          ),
                          
                      NavigaterManager(iconName: "Rate",
                          fileName: "assets/images/rate.png",
                          file: RatePAge(),
                          ),
                      NavigaterManager(iconName: "Privacy & Policy",
                          fileName: "assets/images/privacy.png",
                          file: PrivacyPage(),
                          ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      );
  }

  Padding driweMenu({required String iconName, required String fileName}) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Row(
        children: [
          ImageIcon(
            AssetImage(fileName),
            color: Colors.grey,
            size: 22,
          ),
          SizedBox(
            width: 25,
          ),
          TextButton(
            onPressed: () {
             
            },
            child: Text(
              iconName,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          )
        ],
      ),
    );
  }
}

class CevrimiciGirisEkraniBody extends StatelessWidget {
  const CevrimiciGirisEkraniBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/kuslar.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 4, 32, 55),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          padding: EdgeInsets.all(8.0),
          height: 90,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.black,
                    ),
                    child: IconButton(
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        

                        },
                        icon: ImageIcon(AssetImage("assets/images/tune.png"),
                            size: 35, color: Color.fromARGB(255, 162, 7, 189))),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Settings",
                    style: TextStyle(color: Colors.white, fontSize: 13),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.black,
                    ),
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: ((context) => RelaxMenu())

                          ));
                        },
                        icon: ImageIcon(AssetImage("assets/images/relax.png"),
                            size: 35, color: Color.fromARGB(255, 162, 7, 189))),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Relax",
                    style: TextStyle(color: Colors.white, fontSize: 13),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.black,
                    ),
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context){return MeditationsPage();}));
                        },
                        icon: ImageIcon(AssetImage("assets/images/yoga.png"),
                            size: 35, color: Color.fromARGB(255, 162, 7, 189))),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Meditations",
                    style: TextStyle(color: Colors.white, fontSize: 13),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.black,
                    ),
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return MainPage2();
                          }));
                        },
                        icon: ImageIcon(AssetImage("assets/images/sleep.png"),
                            size: 35, color: Color.fromARGB(255, 162, 7, 189))),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Sleep Stories",
                    style: TextStyle(color: Colors.white, fontSize: 13),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.black,
                    ),
                    child: IconButton(
                        onPressed: () {},
                        icon: ImageIcon(AssetImage("assets/images/volume.png"),
                            size: 35, color: Color.fromARGB(255, 162, 7, 189))),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Scene Volume",
                    style: TextStyle(color: Colors.white, fontSize: 13),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}

buildchangeColor() {}
