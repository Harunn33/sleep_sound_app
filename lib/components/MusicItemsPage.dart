import 'package:flutter/material.dart';
import 'package:sleep_soundss/components/arrowBackBtn.dart';
import 'package:sleep_soundss/sleepStories.dart';

class MusicItemsPage extends StatefulWidget {
  String imageUrl;
  String text;
  String time;

  MusicItemsPage({
    Key? key,
    required this.imageUrl,
    required this.text,
    required this.time,
  }) : super(key: key);

  @override
  State<MusicItemsPage> createState() => _MusicItemsPageState();
}

class _MusicItemsPageState extends State<MusicItemsPage> {
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.ios_share_sharp),
                          iconSize: 40,
                          color: Colors.white,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.first_page_rounded),
                          iconSize: 50,
                          color: Colors.white.withOpacity(.7),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.play_circle_rounded),
                          iconSize: 100,
                          color: Colors.white,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.last_page_rounded),
                          iconSize: 50,
                          color: Colors.white.withOpacity(.7),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.favorite_border_rounded),
                          iconSize: 40,
                          color: Colors.white,
                        )
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
