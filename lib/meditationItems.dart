import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sleep_soundss/classDraweMenu/meditationManager.dart';
import 'package:sleep_soundss/components/MusicItemsPage2.dart';
import 'package:sleep_soundss/components/arrowBackBtn.dart';

class MeditationsItemsPage extends StatefulWidget {
  MeditationsItemsPage({
    Key? key,
  }) : super(key: key);

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
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: Align(
                alignment: Alignment.topRight,
                child: new DropdownButton<String>(
                    icon: FaIcon(
                      FontAwesomeIcons.sliders,
                      color: Colors.white,
                    ),
                    underline: SizedBox(),
                    items: <String>[
                      'None',
                      'Alpha',
                      'Beta',
                      'Gamma',
                      'Delta',
                      'Theta'
                    ].map((String value) {
                      return new DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (_) {}),
              ),
            ),
            GridView.count(
              crossAxisCount: 2,
              padding: EdgeInsets.only(left: 10, right: 10, top: 10),
              crossAxisSpacing: 10,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                MeditationManager(
                  medimageUrl: "assets/images/sleep_baby_2.jpg",
                  medimageText: "Sleeping Baby",
                  context: context,
                  managerWidget: MusicItemsPage2(
                    imageUrl: "assets/images/sleep_baby_2.jpg",
                    text: "Sleeping Baby",
                    time: "3 Min 6 Sec",
                  ),
                ),
                MeditationManager(
                  medimageUrl: "assets/images/sleep_baby_3.jpg",
                  medimageText: "Baby Sleeping Music",
                  context: context,
                  managerWidget: MusicItemsPage2(
                    imageUrl: "assets/images/sleep_baby_3.jpg",
                    text: "Baby Sleeping Music",
                    time: "3 Min 23 Sec",
                  ),
                ),
                MeditationManager(
                  medimageUrl: "assets/images/sleep_baby_4.jpg",
                  medimageText: "Hush Baby Music",
                  context: context,
                  managerWidget: MusicItemsPage2(
                    imageUrl: "assets/images/sleep_baby_4.jpg",
                    text: "Hush Baby Music",
                    time: "2 Min 33 Sec",
                  ),
                ),
                MeditationManager(
                  medimageUrl: "assets/images/sleep_baby_5.jpg",
                  medimageText: "Lullaby Baby",
                  context: context,
                  managerWidget: MusicItemsPage2(
                    imageUrl: "assets/images/sleep_baby_5.jpg",
                    text: "Lullaby Baby",
                    time: "5 Min 3 Sec",
                  ),
                ),
                MeditationManager(
                  medimageUrl: "assets/images/sleep_baby_6.jpg",
                  medimageText: "Little Baby Sleep",
                  context: context,
                  managerWidget: MusicItemsPage2(
                    imageUrl: "assets/images/sleep_baby_6.jpg",
                    text: "Little Baby Sleep",
                    time: "4 Min 58 Sec",
                  ),
                ),
                MeditationManager(
                  medimageUrl: "assets/images/sleep_baby_7.jpg",
                  medimageText: "Magical Baby Music",
                  context: context,
                  managerWidget: MusicItemsPage2(
                    imageUrl: "assets/images/sleep_baby_7.jpg",
                    text: "Magical Baby Music",
                    time: "6 Min 0 Sec",
                  ),
                ),
                MeditationManager(
                  medimageUrl: "assets/images/sleep_baby_8.jpg",
                  medimageText: "Classical Baby Music",
                  context: context,
                  managerWidget: MusicItemsPage2(
                    imageUrl: "assets/images/sleep_baby_8.jpg",
                    text: "Classical Baby Music",
                    time: "5 Min 40 Sec",
                  ),
                ),
                MeditationManager(
                  medimageUrl: "assets/images/sleep_baby_9.jpg",
                  medimageText: "Sleepy Music Baby",
                  context: context,
                  managerWidget: MusicItemsPage2(
                    imageUrl: "assets/images/sleep_baby_9.jpg",
                    text: "Sleepy Music Baby",
                    time: "10 Min 15 Sec",
                  ),
                ),
              ],
            )
          ],
        )
      ]),
    );
  }
}
