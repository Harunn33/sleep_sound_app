import 'package:flutter/material.dart';
import 'package:sleep_soundss/classDraweMenu/meditationManager.dart';
import 'package:sleep_soundss/components/MusicItemsPage2.dart';
import 'package:sleep_soundss/pageHeader.dart';

class MeditationItems3 extends StatefulWidget {
  const MeditationItems3({Key? key}) : super(key: key);

  @override
  State<MeditationItems3> createState() => _MeditationItems3State();
}

class _MeditationItems3State extends State<MeditationItems3> {
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
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisSpacing: 10,
              padding: EdgeInsets.only(left: 10, right: 10, top: 10),
              children: [
                MeditationManager(
                  medimageUrl: "assets/images/nepal_chant.jpg",
                  medimageText: "Nepal Chant",
                  context: context,
                  managerWidget: MusicItemsPage2(
                    imageUrl: "assets/images/nepal_chant.jpg",
                    text: "Nepal Chant",
                    time: "4 Min 26 Sec",
                    musicFilePath: "music.mp3",
                  ),
                ),
                MeditationManager(
                  medimageUrl: "assets/images/relax_chant.jpg",
                  medimageText: "Relax Chant Music",
                  context: context,
                  managerWidget: MusicItemsPage2(
                    imageUrl: "assets/images/relax_chant.jpg",
                    text: "Relax Chant Music",
                    time: "2 Min 16 Sec",
                    musicFilePath: "music.mp3",
                  ),
                ),
                MeditationManager(
                  medimageUrl: "assets/images/meditation_om_chant.jpg",
                  medimageText: "Meditation Om Chant",
                  context: context,
                  managerWidget: MusicItemsPage2(
                    imageUrl: "assets/images/meditation_om_chant.jpg",
                    text: "Meditation Om Chant",
                    time: "1 Min 6 Sec",
                    musicFilePath: "music.mp3",
                  ),
                ),
                MeditationManager(
                  medimageUrl: "assets/images/super_energy_chant.jpg",
                  medimageText: "Super Energy Chant",
                  context: context,
                  managerWidget: MusicItemsPage2(
                    imageUrl: "assets/images/super_energy_chant.jpg",
                    text: "Super Energy Chant",
                    time: "2 Min 58 Sec",
                    musicFilePath: "music.mp3",
                  ),
                ),
                MeditationManager(
                  medimageUrl: "assets/images/deep_om_chant.jpg",
                  medimageText: "Deep Om Chant",
                  context: context,
                  managerWidget: MusicItemsPage2(
                    imageUrl: "assets/images/deep_om_chant.jpg",
                    text: "Depp Om Chant",
                    time: "6 Min 01 Sec",
                    musicFilePath: "music.mp3",
                  ),
                ),
                MeditationManager(
                  medimageUrl: "assets/images/peaceful_chant.jpg",
                  medimageText: "Peaceful Chant Music",
                  context: context,
                  managerWidget: MusicItemsPage2(
                    imageUrl: "assets/images/peaceful_chant.jpg",
                    text: "Peaceful Chant Music",
                    time: "4 Min 38 Sec",
                    musicFilePath: "music.mp3",
                  ),
                ),
                MeditationManager(
                  medimageUrl: "assets/images/mystic_india_chant.jpg",
                  medimageText: "Mystic India Chant",
                  context: context,
                  managerWidget: MusicItemsPage2(
                    imageUrl: "assets/images/mystic_india_chant.jpg",
                    text: "Mystic India Chant",
                    time: "1 Min 23 Sec",
                    musicFilePath: "music.mp3",
                  ),
                ),
                MeditationManager(
                  medimageUrl: "assets/images/meditation_chant.jpg",
                  medimageText: "Meditation Chant",
                  context: context,
                  managerWidget: MusicItemsPage2(
                    imageUrl: "assets/images/meditation_chant.jpg",
                    text: "Meditation Chant",
                    time: "2 Min 11 Sec",
                    musicFilePath: "music.mp3",
                  ),
                ),
                MeditationManager(
                  medimageUrl: "assets/images/super_chant.jpg",
                  medimageText: "Super Chant",
                  context: context,
                  managerWidget: MusicItemsPage2(
                    imageUrl: "assets/images/super_chant.jpg",
                    text: "Super Chant",
                    time: "5 Min 35 Sec",
                    musicFilePath: "music.mp3",
                  ),
                ),
                MeditationManager(
                  medimageUrl: "assets/images/chakra_meditation.jpg",
                  medimageText: "Chakra Meditation",
                  context: context,
                  managerWidget: MusicItemsPage2(
                    imageUrl: "assets/images/chakra_meditation.jpg",
                    text: "Chakra Meditation",
                    time: "2 Min 11 Sec",
                    musicFilePath: "music.mp3",
                  ),
                ),
                MeditationManager(
                  medimageUrl: "assets/images/natural_chant.jpg",
                  medimageText: "Natural Chant",
                  context: context,
                  managerWidget: MusicItemsPage2(
                    imageUrl: "assets/images/natural_chant.jpg",
                    text: "Natural Chant",
                    time: "2 Min 25 Sec",
                    musicFilePath: "music.mp3",
                  ),
                ),
                MeditationManager(
                  medimageUrl: "assets/images/chants_music.jpg",
                  medimageText: "Chants Music",
                  context: context,
                  managerWidget: MusicItemsPage2(
                    imageUrl: "assets/images/chants_music.jpg",
                    text: "Chants Music",
                    time: "3 Min 00 Sec",
                    musicFilePath: "music.mp3",
                  ),
                ),
                MeditationManager(
                  medimageUrl: "assets/images/bell_chant.jpg",
                  medimageText: "Relaxation Bell Chant",
                  context: context,
                  managerWidget: MusicItemsPage2(
                    imageUrl: "assets/images/bell_chant.jpg",
                    text: "Relaxation Bell Chant",
                    time: "4 Min 21 Sec",
                    musicFilePath: "music.mp3",
                  ),
                ),
                MeditationManager(
                  medimageUrl: "assets/images/relax_chant.jpg",
                  medimageText: "Chants Music for Relax",
                  context: context,
                  managerWidget: MusicItemsPage2(
                    imageUrl: "assets/images/relax_chant.jpg",
                    text: "Chants Music for Relax",
                    time: "2 Min 45 Sec",
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
