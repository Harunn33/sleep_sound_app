import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sleep_soundss/classDraweMenu/meditationManager.dart';
import 'package:sleep_soundss/components/MusicItemsPage2.dart';
import 'package:sleep_soundss/pageHeader.dart';

import 'components/arrowBackBtn.dart';
import 'meditationItems.dart';

class MeditationItems2 extends StatefulWidget {
  const MeditationItems2({Key? key}) : super(key: key);

  @override
  State<MeditationItems2> createState() => _MeditationItems2State();
}

class _MeditationItems2State extends State<MeditationItems2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade900,
      body: Stack(children: [
        ListView(
          children: [
            PageHeader(
                headerImageUrl: "assets/images/meditation.jpg",
                text: "Meditation"),
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
                  medimageUrl: "assets/images/brain1.jpg",
                  medimageText: "Alpha Brain Waves",
                  context: context,
                  managerWidget: MusicItemsPage2(
                    imageUrl: "assets/images/brain1.jpg",
                    text: "Alpha Brain Waves",
                    time: "3 Min 6 Sec",
                    musicFilePath: "music.mp3",
                  ),
                ),
                MeditationManager(
                  medimageUrl: "assets/images/brain2.jpg",
                  medimageText: "Brain Wave Alpha",
                  context: context,
                  managerWidget: MusicItemsPage2(
                    imageUrl: "assets/images/brain2.jpg",
                    text: "Brain Wave Alpha",
                    time: "3 Min 23 Sec",
                    musicFilePath: "music.mp3",
                  ),
                ),
                MeditationManager(
                  medimageUrl: "assets/images/brain3.jpg",
                  medimageText: "Meditation in Alpha Waves",
                  context: context,
                  managerWidget: MusicItemsPage2(
                    imageUrl: "assets/images/brain3.jpg",
                    text: "Meditation in Alpha Waves",
                    time: "2 Min 33 Sec",
                    musicFilePath: "music.mp3",
                  ),
                ),
                MeditationManager(
                  medimageUrl: "assets/images/brain4.jpg",
                  medimageText: "Brain Wave Meditation",
                  context: context,
                  managerWidget: MusicItemsPage2(
                    imageUrl: "assets/images/brain4.jpg",
                    text: "Brain Wave Meditation",
                    time: "5 Min 3 Sec",
                    musicFilePath: "music.mp3",
                  ),
                ),
                MeditationManager(
                  medimageUrl: "assets/images/brain5.jpg",
                  medimageText: "Alpha Wave Meditation",
                  context: context,
                  managerWidget: MusicItemsPage2(
                    imageUrl: "assets/images/brain5.jpg",
                    text: "Alpha Wave Meditation",
                    time: "4 Min 58 Sec",
                    musicFilePath: "music.mp3",
                  ),
                ),
                MeditationManager(
                  medimageUrl: "assets/images/brain6.jpg",
                  medimageText: "Brain Wave Beta Music",
                  context: context,
                  managerWidget: MusicItemsPage2(
                    imageUrl: "assets/images/brain6.jpg",
                    text: "Brain Wave Beta Music",
                    time: "6 Min 0 Sec",
                    musicFilePath: "music.mp3",
                  ),
                ),
                MeditationManager(
                  medimageUrl: "assets/images/brain7.jpg",
                  medimageText: "Brain Wave Beta Music",
                  context: context,
                  managerWidget: MusicItemsPage2(
                    imageUrl: "assets/images/brain7.jpg",
                    text: "Beta Brain Wave Music",
                    time: "5 Min 40 Sec",
                    musicFilePath: "music.mp3",
                  ),
                ),
                MeditationManager(
                  medimageUrl: "assets/images/brain8.jpg",
                  medimageText: "Binaural Beta Waves",
                  context: context,
                  managerWidget: MusicItemsPage2(
                    imageUrl: "assets/images/brain8.jpg",
                    text: "Binaural Beta Waves",
                    time: "10 Min 15 Sec",
                    musicFilePath: "music.mp3",
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
