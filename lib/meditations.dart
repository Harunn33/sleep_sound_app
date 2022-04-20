import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sleep_soundss/baseClass.dart';
import 'package:sleep_soundss/components/arrowBackBtn.dart';
import 'package:sleep_soundss/freePage.dart';
import 'package:sleep_soundss/meditationItems.dart';
import 'package:sleep_soundss/meditationItems2.dart';

class MeditationsPage extends StatefulWidget implements BaseClass {
  const MeditationsPage({Key? key}) : super(key: key);

  @override
  State<MeditationsPage> createState() => _MeditationsPageState();
}

class _MeditationsPageState extends State<MeditationsPage> {
  @override
  Widget build(
    BuildContext context,
  ) {
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
                MeditationContainer(
                    imageUrl: "assets/images/sleep_baby.jpg",
                    text: "Baby Sleep Music",
                    context: context,
                    widget: MeditationsItemsPage()),
                MeditationContainer(
                    imageUrl: "assets/images/brain.jpg",
                    text: "Brain Wave Meditation",
                    context: context,
                    widget: MeditationItems2()),
                MeditationContainer(
                    imageUrl: "assets/images/rosary.jpg",
                    text: "Chants",
                    context: context,
                    widget: FreePage()),
                MeditationContainer(
                    imageUrl: "assets/images/healing_meditation.jpg",
                    text: "Healing Meditation",
                    context: context,
                    widget: FreePage()),
                MeditationContainer(
                    imageUrl: "assets/images/instrument_meditation.jpg",
                    text: "Instrument Meditation",
                    context: context,
                    widget: FreePage()),
                MeditationContainer(
                    imageUrl: "assets/images/sleep_meditation.jpg",
                    text: "Sleep Meditation",
                    context: context,
                    widget: FreePage()),
                MeditationContainer(
                    imageUrl: "assets/images/stress_meditation.jpg",
                    text: "Stress Meditation",
                    context: context,
                    widget: FreePage()),
                MeditationContainer(
                    imageUrl: "assets/images/yoga.jpg",
                    text: "Yoga Meditation",
                    context: context,
                    widget: FreePage())
              ],
            )
          ],
        )
      ]),
    );
  }
}

Widget MeditationContainer(
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
