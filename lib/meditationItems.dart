import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sleep_soundss/components/MusicItemsPage2.dart';
import 'package:sleep_soundss/components/arrowBackBtn.dart';

class MeditationsItemsPage extends StatefulWidget {
  String imageUrl1;
  String imageUrl2;
  String imageUrl3;
  String imageUrl4;
  String imageUrl5;
  String imageUrl6;
  String imageUrl7;
  String imageUrl8;
  String text1;
  String text2;
  String text3;
  String text4;
  String text5;
  String text6;
  String text7;
  String text8;
  IconData sliderIcon;

  MeditationsItemsPage({
    Key? key,
    required this.imageUrl1,
    required this.imageUrl2,
    required this.imageUrl3,
    required this.imageUrl4,
    required this.imageUrl5,
    required this.imageUrl6,
    required this.imageUrl7,
    required this.imageUrl8,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
    required this.text5,
    required this.text6,
    required this.text7,
    required this.text8,
    required this.sliderIcon,
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
                      widget.sliderIcon,
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
                MeditationItems(
                    imageUrl: widget.imageUrl1,
                    text: widget.text1,
                    context: context,
                    widget: MusicItemsPage2(
                        imageUrl: widget.imageUrl1,
                        text: widget.text1,
                        time: "3 Min 6 Sec")),
                MeditationItems(
                    imageUrl: widget.imageUrl2,
                    text: widget.text2,
                    context: context,
                    widget: MusicItemsPage2(
                        imageUrl: widget.imageUrl2,
                        text: widget.text2,
                        time: "3 Min 23 Sec")),
                MeditationItems(
                    imageUrl: widget.imageUrl3,
                    text: widget.text3,
                    context: context,
                    widget: MusicItemsPage2(
                        imageUrl: widget.imageUrl3,
                        text: widget.text3,
                        time: "2 Min 33 Sec")),
                MeditationItems(
                    imageUrl: widget.imageUrl4,
                    text: widget.text4,
                    context: context,
                    widget: MusicItemsPage2(
                        imageUrl: widget.imageUrl4,
                        text: widget.text4,
                        time: "5 Min 3 Sec")),
                MeditationItems(
                    imageUrl: widget.imageUrl5,
                    text: widget.text5,
                    context: context,
                    widget: MusicItemsPage2(
                        imageUrl: widget.imageUrl5,
                        text: widget.text5,
                        time: "4 Min 58 Sec")),
                MeditationItems(
                    imageUrl: widget.imageUrl6,
                    text: widget.text6,
                    context: context,
                    widget: MusicItemsPage2(
                        imageUrl: widget.imageUrl6,
                        text: widget.text6,
                        time: "6 Min 0 Sec")),
                MeditationItems(
                    imageUrl: widget.imageUrl7,
                    text: widget.text7,
                    context: context,
                    widget: MusicItemsPage2(
                        imageUrl: widget.imageUrl7,
                        text: widget.text7,
                        time: "5 Min 40 Sec")),
                MeditationItems(
                    imageUrl: widget.imageUrl8,
                    text: widget.text8,
                    context: context,
                    widget: MusicItemsPage2(
                        imageUrl: widget.imageUrl8,
                        text: widget.text8,
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
