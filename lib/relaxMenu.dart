import 'package:flutter/material.dart';
import 'package:sleep_soundss/baseClass.dart';


import 'package:sleep_soundss/components/arrowBackBtn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RelaxMenu(),
    );
  }
}

class RelaxMenu extends StatelessWidget implements BaseClass{
  const RelaxMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF00091B),
      body: bodyManager(),
    );
  }

  Stack bodyManager() {
    return Stack(
      children: [
        ListView(
          padding: EdgeInsets.only(bottom: 50),
          children: [
            ArrowBackBtn(),
            Container(
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/rekolayzer.jpg"),
                    fit: BoxFit.cover),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 60),
                    child: Text(
                      "Relax",
                      style: TextStyle(
                        fontSize: 80,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'SquarePeg',
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(6)),
                              color: Color(0xFF1a2946),
                            ),
                            child: Center(
                              child: Text(
                                "Relax",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 2,
                        height: 50,
                        color: Colors.black.withOpacity(.7),
                      ),
                      Expanded(
                        flex: 2,
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(6)),
                              color: Color(0xFF1a2946),
                            ),
                            child: Center(
                              child: Text(
                                "Favourite",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            storyContainer("Barley.jpg", "chicks.jpg", "flute.jpg", "Barley",
                "Chicks", "Flute"),
            storyContainer("basketball.jpg", "desert.jpg", "forest.jpg",
                "Basketball", "Desert", "Forest"),
            storyContainer("blackbird.jpg", "dreamnight.jpg", "frog.jpg",
                "Black Bird", "Dream Night", "Frog"),
            storyContainer("campfare.jpg", "floating.jpg", "heart.jpg",
                "Campfire", "Floating", "Heartbeat"),
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: double.infinity,
            height: 64,
            color: Color(0xFF00091B),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        onPressed: () {},
                        icon: ImageIcon(
                          AssetImage("assets/images/garbage.png"),
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Text(
                      "Clear",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                Column(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.favorite),
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      "Favorite  ",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Container storyContainer(String path1, String path2, String path3,
      String name1, String name2, String name3) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            storyInfo(
              path: path1,
              name: name1,
            ),
            storyInfo(path: path2, name: name2),
            storyInfo(path: path3, name: name3),
          ],
        ),
      ),
    );
  }

  Widget storyInfo({
    required String path,
    required String name,
  }) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.grey,
                image: DecorationImage(
                    image: AssetImage("assets/images/" + path),
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              name,
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
