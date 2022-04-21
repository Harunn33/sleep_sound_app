import 'package:flutter/material.dart';
import 'package:sleep_soundss/components/arrowBackBtn.dart';

class PageHeader extends StatefulWidget {
  String text;
  String headerImageUrl;
  PageHeader({Key? key, required this.headerImageUrl, required this.text})
      : super(key: key);

  @override
  State<PageHeader> createState() => _PageHeaderState();
}

class _PageHeaderState extends State<PageHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(widget.headerImageUrl), fit: BoxFit.cover),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ArrowBackBtn(),
          Padding(
            padding: EdgeInsets.only(bottom: 90),
            child: Text(
              widget.text,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  fontFamily: "SquarePeg"),
            ),
          ),
        ],
      ),
    );
  }
}
