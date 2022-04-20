import 'package:flutter/material.dart';

class MeditationManager extends StatefulWidget {
  String medimageUrl;
  String medimageText;
  BuildContext context;
  Widget managerWidget;
  MeditationManager(
      {Key? key,
      required this.medimageUrl,
      required this.medimageText,
      required this.context,
      required this.managerWidget})
      : super(key: key);

  @override
  State<MeditationManager> createState() => _MeditationManagerState();
}

class _MeditationManagerState extends State<MeditationManager> {
  @override
  Widget build(BuildContext context) {
    return MeditationItems(
        imageUrl: widget.medimageUrl,
        text: widget.medimageText,
        context: context,
        widget: widget.managerWidget);
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
