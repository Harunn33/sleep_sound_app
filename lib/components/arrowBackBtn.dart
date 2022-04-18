import 'package:flutter/material.dart';

class ArrowBackBtn extends StatelessWidget {
  const ArrowBackBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        child: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
          iconSize: 35,
          color: Colors.white,
        ),
      ),
    );
  }
}
