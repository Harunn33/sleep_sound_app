import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sleep_soundss/components/arrowBackBtn.dart';

class MusicItemsPage2 extends StatefulWidget {
  String imageUrl;
  String text;
  String time;

  MusicItemsPage2({
    Key? key,
    required this.imageUrl,
    required this.text,
    required this.time,
  }) : super(key: key);

  @override
  State<MusicItemsPage2> createState() => _MusicItemsPage2State();
}

class _MusicItemsPage2State extends State<MusicItemsPage2> {
  IconData favorite = Icons.favorite_border_rounded;
  IconData playPause = Icons.play_circle_rounded;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Padding(
              padding: EdgeInsets.only(top: 22, left: 6),
              child: ArrowBackBtn(),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(widget.imageUrl), fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 40),
            child: Align(
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    widget.text,
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(widget.imageUrl),
                        ),
                        border: Border.all(
                          width: 1,
                          color: Colors.white,
                        )),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          width: 1.5,
                          color: Colors.grey,
                        )),
                    child: Text(
                      widget.time,
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    widget.text,
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white.withOpacity(.8),
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 120),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.first_page_rounded),
                              iconSize: 50,
                              color: Colors.white.withOpacity(.7),
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  if (playPause == Icons.play_circle_rounded) {
                                    playPause = Icons.pause_circle_rounded;
                                  } else {
                                    playPause = Icons.play_circle_rounded;
                                  }
                                });
                              },
                              icon: Icon(playPause),
                              iconSize: 100,
                              color: Colors.white,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.last_page_rounded),
                              iconSize: 50,
                              color: Colors.white.withOpacity(.7),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: FaIcon(FontAwesomeIcons.upRightFromSquare),
                          iconSize: 35,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
