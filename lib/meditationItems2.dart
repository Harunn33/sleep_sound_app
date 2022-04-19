import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'meditationItems.dart';

class MeditationItems2 extends StatefulWidget {
  const MeditationItems2({Key? key}) : super(key: key);

  @override
  State<MeditationItems2> createState() => _MeditationItems2State();
}

class _MeditationItems2State extends State<MeditationItems2> {
  @override
  Widget build(BuildContext context) {
    return MeditationsItemsPage(
      sliderIcon: FontAwesomeIcons.sliders,
      imageUrl1: "assets/images/brain1.jpg",
      imageUrl2: "assets/images/brain2.jpg",
      imageUrl3: "assets/images/brain3.jpg",
      imageUrl4: "assets/images/brain4.jpg",
      imageUrl5: "assets/images/brain5.jpg",
      imageUrl6: "assets/images/brain6.jpg",
      imageUrl7: "assets/images/brain7.jpg",
      imageUrl8: "assets/images/brain8.jpg",
      text1: "Alpha Brain Waves",
      text2: "Brain Wave Alpha",
      text3: "Meditation in Alpha Waves",
      text4: "Brain Wave Meditation",
      text5: "Alpha Wave Meditation",
      text6: "Brain Wave Beta Music",
      text7: "Beta Brain Wave Music",
      text8: "Binaural Beta Waves",
    );
  }
}

class SliderIcon extends StatelessWidget {
  const SliderIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new DropdownButton<String>(
        icon: FaIcon(
          FontAwesomeIcons.clock,
          color: Colors.white,
        ),
        underline: SizedBox(),
        items: <String>['Duration None', 'DESC', 'ASC'].map((String value) {
          return new DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: (_) {});
  }
}
