import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sleep_soundss/baseClass.dart';
import 'package:sleep_soundss/components/arrowBackBtn.dart';
import 'package:sleep_soundss/components/MusicItemsPage.dart';

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
      home: MainPage2(),
    );
  }
}

class MainPage2 extends StatefulWidget implements BaseClass {
  const MainPage2({Key? key}) : super(key: key);

  @override
  State<MainPage2> createState() => _MainPage2State();
}

class _MainPage2State extends State<MainPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF00091B),
      body: Stack(
        children: [
          ListView(children: [
            Container(
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/river.jpg"),
                    fit: BoxFit.cover),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ArrowBackBtn(),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Text(
                      "Sleep Stories",
                      style: TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: "SquarePeg"),
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
                                "Stories",
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
                                "Favorites",
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
            Container(
              padding: EdgeInsets.only(right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  new DropdownButton<String>(
                      icon: FaIcon(
                        FontAwesomeIcons.clock,
                        color: Colors.white,
                      ),
                      underline: SizedBox(),
                      items: <String>['Duration None', 'DESC', 'ASC']
                          .map((String value) {
                        return new DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (_) {}),
                  new DropdownButton<String>(
                      icon: FaIcon(
                        FontAwesomeIcons.sliders,
                        color: Colors.white,
                      ),
                      underline: SizedBox(),
                      items: <String>['None', 'Adult', 'General', 'Kid', 'Kids']
                          .map((String value) {
                        return new DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (_) {}),
                ],
              ),
            ),
            GridView.count(
              crossAxisCount: 2,
              padding: EdgeInsets.symmetric(horizontal: 8),
              mainAxisSpacing: 10,
              crossAxisSpacing: 30,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                sleepStoriesContainer(
                    imageUrl: "assets/images/butterfly.jpg",
                    text: "The Butterfly Nest",
                    time: "13 min 1 sec",
                    widget: MusicItemsPage(
                        imageUrl: "assets/images/butterfly.jpg",
                        text: "The Butterfly Nest",
                        time: "13 Min 1 Sec"),
                    context: context),
                sleepStoriesContainer(
                    imageUrl: "assets/images/rabbit.jpg",
                    text: "The Velveteen Rabbit",
                    time: "29 min 37 sec",
                    widget: MusicItemsPage(
                      imageUrl: "assets/images/rabbit.jpg",
                      text: "The Velveteen Rabbit",
                      time: "29 Min 37 Sec",
                    ),
                    context: context),
                sleepStoriesContainer(
                    imageUrl: "assets/images/lost.jpg",
                    text: "Searching For A Lost",
                    time: "22 min 13 sec",
                    widget: MusicItemsPage(
                      imageUrl: "assets/images/lost.jpg",
                      text: "Searching For A Lost",
                      time: "22 Min 13 Sec",
                    ),
                    context: context),
                sleepStoriesContainer(
                    imageUrl: "assets/images/bees.jpg",
                    text: "There Be Bees",
                    time: "18 min 40 sec",
                    widget: MusicItemsPage(
                      imageUrl: "assets/images/bees.jpg",
                      text: "There Be Bees",
                      time: "18 Min 40 Sec",
                    ),
                    context: context),
                sleepStoriesContainer(
                    imageUrl: "assets/images/dreamChronicles.jpg",
                    text: "Dream Chronicles",
                    time: "16 min 58 sec",
                    widget: MusicItemsPage(
                      imageUrl: "assets/images/dreamChronicles.jpg",
                      text: "Dream Chronicles",
                      time: "16 Min 58 Sec",
                    ),
                    context: context),
                sleepStoriesContainer(
                    imageUrl: "assets/images/forest.jpg",
                    text: "The Bundle In The Forest",
                    time: "15 min 50 sec",
                    widget: MusicItemsPage(
                      imageUrl: "assets/images/forest.jpg",
                      text: "The Bundle In The Forest",
                      time: "15 Min 50 Sec",
                    ),
                    context: context),
              ],
            ),
          ]),
        ],
      ),
    );
  }
}

Widget sleepStoriesContainer(
    {required String imageUrl,
    required String text,
    required String time,
    required Widget widget,
    required BuildContext context}) {
  text = text;
  return GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return widget;
      }));
    },
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(imageUrl), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(13)),
          width: 200,
          height: 100,
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        Text(
          time,
          style: TextStyle(
              fontSize: 10,
              color: Color(0xFF1a2946),
              fontWeight: FontWeight.bold),
        )
      ],
    ),
  );
}
