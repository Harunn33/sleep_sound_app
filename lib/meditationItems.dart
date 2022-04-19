import 'package:flutter/material.dart';
import 'package:sleep_soundss/components/MusicItemsPage.dart';
import 'package:sleep_soundss/components/arrowBackBtn.dart';

class MeditationsItemsPage extends StatefulWidget {
  const MeditationsItemsPage({Key? key}) : super(key: key);

  @override
  State<MeditationsItemsPage> createState() => _MeditationsItemsPageState();
}

class _MeditationsItemsPageState extends State<MeditationsItemsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade900,
      body: Stack(children: [
        ListView(
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/meditation.jpg"),
                    fit: BoxFit.cover),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ArrowBackBtn(),
                  Padding(
                    padding: EdgeInsets.only(bottom: 90),
                    child: Text(
                      "Meditation",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 45,
                          fontWeight: FontWeight.bold,
                          fontFamily: "SquarePeg"),
                    ),
                  ),
                ],
              ),
            ),
            GridView.count(
              crossAxisCount: 2,
              padding: EdgeInsets.only(left: 10, right: 10, top: 10),
              crossAxisSpacing: 10,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                MeditationItems(
                    imageUrl: "assets/images/sleep_baby_2.jpg",
                    text: "Sleeping Baby",
                    context: context,
                    widget: MusicItemsPage(
                        imageUrl: "assets/images/sleep_baby_2.jpg",
                        text: "Sleeping Baby",
                        time: "3 Min 6 Sec")),
                MeditationItems(
                    imageUrl: "assets/images/sleep_baby_3.jpg",
                    text: "Baby Sleeping Music",
                    context: context,
                    widget: MusicItemsPage(
                        imageUrl: "assets/images/sleep_baby_3.jpg",
                        text: "Baby Sleeping Music",
                        time: "3 Min 23 Sec")),
                MeditationItems(
                    imageUrl: "assets/images/sleep_baby_4.jpg",
                    text: "Hush Baby Music",
                    context: context,
                    widget: MusicItemsPage(
                        imageUrl: "assets/images/sleep_baby_4.jpg",
                        text: "Hush Baby Music",
                        time: "2 Min 33 Sec")),
                MeditationItems(
                    imageUrl: "assets/images/sleep_baby_6.jpg",
                    text: "Lullaby Baby",
                    context: context,
                    widget: MusicItemsPage(
                        imageUrl: "assets/images/sleep_baby_6.jpg",
                        text: "Lullaby Baby",
                        time: "5 Min 3 Sec")),
                MeditationItems(
                    imageUrl: "assets/images/sleep_baby_5.jpg",
                    text: "Little Baby Sleep",
                    context: context,
                    widget: MusicItemsPage(
                        imageUrl: "assets/images/sleep_baby_5.jpg",
                        text: "Little Baby Sleep",
                        time: "4 Min 58 Sec")),
                MeditationItems(
                    imageUrl: "assets/images/sleep_baby_7.jpg",
                    text: "Magical Baby Music",
                    context: context,
                    widget: MusicItemsPage(
                        imageUrl: "assets/images/sleep_baby_7.jpg",
                        text: "Magical Baby Music",
                        time: "6 Min 0 Sec")),
                MeditationItems(
                    imageUrl: "assets/images/sleep_baby_8.jpg",
                    text: "Classical Baby Music",
                    context: context,
                    widget: MusicItemsPage(
                        imageUrl: "assets/images/sleep_baby_8.jpg",
                        text: "Classical baby Music",
                        time: "5 Min 40 Sec")),
                MeditationItems(
                    imageUrl: "assets/images/sleep_baby_9.jpg",
                    text: "Sleepy Music Baby",
                    context: context,
                    widget: MusicItemsPage(
                        imageUrl: "assets/images/sleep_baby_9.jpg",
                        text: "Sleepy Music Baby",
                        time: "10 Min 15 Sec"))
              ],
            )
          ],
        )
      ]),
    );
  }
}

Widget MeditationItems(
    {required String imageUrl,
    required String text,
    required BuildContext context,
    required Widget widget}) {
  return GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return widget;
      }));
    },
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(imageUrl), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(13)),
          width: 200,
          height: 130,
        ),
        SizedBox(
          height: 6,
        ),
        Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    ),
  );
}
