import 'package:flutter/material.dart';
import 'package:sleep_soundss/classDraweMenu/meditationManager.dart';
import 'package:sleep_soundss/components/MusicItemsPage2.dart';
import 'package:sleep_soundss/pageHeader.dart';

class MeditationItems4 extends StatefulWidget {
  const MeditationItems4({Key? key}) : super(key: key);

  @override
  State<MeditationItems4> createState() => _MeditationItems4State();
}

class _MeditationItems4State extends State<MeditationItems4> {
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
            GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              padding: EdgeInsets.only(left: 10, right: 10, top: 10),
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                MeditationManager(
                  medimageUrl: "assets/images/deep_om_chant.jpg",
                  medimageText: "Healing Meditation Music",
                  context: context,
                  managerWidget: MusicItemsPage2(
                    imageUrl: "assets/images/deep_om_chant.jpg",
                    text: "Healing Meditation Music",
                    time: "4 Min 26 Sec",
                    musicFilePath: "music.mp3",
                  ),
                ),
                MeditationManager(
                  medimageUrl: "assets/images/meditation_chant.jpg",
                  medimageText: "Grow Healing Meditation",
                  context: context,
                  managerWidget: MusicItemsPage2(
                    imageUrl: "assets/images/meditation_chant.jpg",
                    text: "Grow Healing Meditation",
                    time: "7 Min 17 Sec",
                    musicFilePath: "music.mp3",
                  ),
                ),
                MeditationManager(
                  medimageUrl: "assets/images/upbeat_healing.jpg",
                  medimageText: "Upbeat Healing",
                  context: context,
                  managerWidget: MusicItemsPage2(
                    imageUrl: "assets/images/upbeat_healing.jpg",
                    text: "Upbeat Healing",
                    time: "4 Min 32 Sec",
                    musicFilePath: "music.mp3",
                  ),
                ),
                MeditationManager(
                  medimageUrl: "assets/images/concert.jpg",
                  medimageText: "Healing Music Orient",
                  context: context,
                  managerWidget: MusicItemsPage2(
                    imageUrl: "assets/images/concert.jpg",
                    text: "Healing Music Orient",
                    time: "5 Min 00 Sec",
                    musicFilePath: "music.mp3",
                  ),
                ),
                MeditationManager(
                  medimageUrl: "assets/images/peaceful_chant.jpg",
                  medimageText: "Healing Meditation",
                  context: context,
                  managerWidget: MusicItemsPage2(
                    imageUrl: "assets/images/peaceful_chant.jpg",
                    text: "Healing Meditation",
                    time: "6 Min 10 Sec",
                    musicFilePath: "music.mp3",
                  ),
                ),
                MeditationManager(
                  medimageUrl: "assets/images/human_in_lake.jpg",
                  medimageText: "Healing Meditation Peace",
                  context: context,
                  managerWidget: MusicItemsPage2(
                    imageUrl: "assets/images/human_in_lake.jpg",
                    text: "Healing Meditation Peace",
                    time: "10 Min 3 Sec",
                    musicFilePath: "music.mp3",
                  ),
                ),
                MeditationManager(
                  medimageUrl: "assets/images/meditation1.jpg",
                  medimageText: "Meditation For Healing",
                  context: context,
                  managerWidget: MusicItemsPage2(
                    imageUrl: "assets/images/meditation1.jpg",
                    text: "Meditation For Healing",
                    time: "5 Min 3 Sec",
                    musicFilePath: "music.mp3",
                  ),
                ),
                MeditationManager(
                  medimageUrl: "assets/images/sound_of_healing.jpg",
                  medimageText: "Sound Of Healing",
                  context: context,
                  managerWidget: MusicItemsPage2(
                    imageUrl: "assets/images/sound_of_healing.jpg",
                    text: "Sound Of Healing",
                    time: "8 Min 49 Sec",
                    musicFilePath: "music.mp3",
                  ),
                ),
                MeditationManager(
                  medimageUrl: "assets/images/healing_sound_music.jpg",
                  medimageText: "Healing Sound Music",
                  context: context,
                  managerWidget: MusicItemsPage2(
                    imageUrl: "assets/images/healing_sound_music.jpg",
                    text: "Healing Sound Music",
                    time: "4 Min 5 Sec",
                    musicFilePath: "music.mp3",
                  ),
                ),
                MeditationManager(
                  medimageUrl: "assets/images/aura.jpg",
                  medimageText: "Aura Healing Music",
                  context: context,
                  managerWidget: MusicItemsPage2(
                    imageUrl: "assets/images/aura.jpg",
                    text: "Aura Healing Music",
                    time: "5 Min 36 Sec",
                    musicFilePath: "music.mp3",
                  ),
                ),
                MeditationManager(
                  medimageUrl: "assets/images/time_for_healing.jpg",
                  medimageText: "Time for Healing",
                  context: context,
                  managerWidget: MusicItemsPage2(
                    imageUrl: "assets/images/time_for_healing.jpg",
                    text: "Time for Healing",
                    time: "0 Min 0 Sec",
                    musicFilePath: "music.mp3",
                  ),
                ),
                MeditationManager(
                  medimageUrl: "assets/images/relax_healing.jpg",
                  medimageText: "Relax Healing",
                  context: context,
                  managerWidget: MusicItemsPage2(
                    imageUrl: "assets/images/relax_healing.jpg",
                    text: "Relax Healing",
                    time: "3 Min 13 Sec",
                    musicFilePath: "music.mp3",
                  ),
                ),
                MeditationManager(
                  medimageUrl: "assets/images/healing_music.jpg",
                  medimageText: "Healing Music",
                  context: context,
                  managerWidget: MusicItemsPage2(
                    imageUrl: "assets/images/healing_music.jpg",
                    text: "Healing Music",
                    time: "6 Min 7 Sec",
                    musicFilePath: "music.mp3",
                  ),
                ),
                MeditationManager(
                  medimageUrl: "assets/images/calm_healing_music.jpg",
                  medimageText: "Calm Healing Music",
                  context: context,
                  managerWidget: MusicItemsPage2(
                    imageUrl: "assets/images/calm_healing_music.jpg",
                    text: "Calm Healing Music",
                    time: "5 Min 59 Sec",
                    musicFilePath: "music.mp3",
                  ),
                ),
                MeditationManager(
                  medimageUrl: "assets/images/peaceful_chant.jpg",
                  medimageText: "Healing Meditation",
                  context: context,
                  managerWidget: MusicItemsPage2(
                    imageUrl: "assets/images/peaceful_chant.jpg",
                    text: "Healing Meditation",
                    time: "4 Min 26 Sec",
                    musicFilePath: "music.mp3",
                  ),
                ),
                MeditationManager(
                  medimageUrl: "assets/images/peaceful_chant.jpg",
                  medimageText: "Healing Meditation",
                  context: context,
                  managerWidget: MusicItemsPage2(
                    imageUrl: "assets/images/peaceful_chant.jpg",
                    text: "Healing Meditation",
                    time: "4 Min 26 Sec",
                    musicFilePath: "music.mp3",
                  ),
                ),
                MeditationManager(
                  medimageUrl: "assets/images/peaceful_chant.jpg",
                  medimageText: "Healing Meditation",
                  context: context,
                  managerWidget: MusicItemsPage2(
                    imageUrl: "assets/images/peaceful_chant.jpg",
                    text: "Healing Meditation",
                    time: "4 Min 26 Sec",
                    musicFilePath: "music.mp3",
                  ),
                ),
                MeditationManager(
                  medimageUrl: "assets/images/peaceful_chant.jpg",
                  medimageText: "Healing Meditation",
                  context: context,
                  managerWidget: MusicItemsPage2(
                    imageUrl: "assets/images/peaceful_chant.jpg",
                    text: "Healing Meditation",
                    time: "4 Min 26 Sec",
                    musicFilePath: "music.mp3",
                  ),
                ),
                MeditationManager(
                  medimageUrl: "assets/images/peaceful_chant.jpg",
                  medimageText: "Healing Meditation",
                  context: context,
                  managerWidget: MusicItemsPage2(
                    imageUrl: "assets/images/peaceful_chant.jpg",
                    text: "Healing Meditation",
                    time: "4 Min 26 Sec",
                    musicFilePath: "music.mp3",
                  ),
                ),
                MeditationManager(
                  medimageUrl: "assets/images/peaceful_chant.jpg",
                  medimageText: "Healing Meditation",
                  context: context,
                  managerWidget: MusicItemsPage2(
                    imageUrl: "assets/images/peaceful_chant.jpg",
                    text: "Healing Meditation",
                    time: "4 Min 26 Sec",
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
