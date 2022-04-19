import 'package:flutter/material.dart';
import 'package:sleep_soundss/baseClass.dart';
import 'package:sleep_soundss/home.dart';
import 'package:sleep_soundss/sleepStories.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainPage extends StatelessWidget implements BaseClass  {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color.fromRGBO(28, 7, 48, 1),
        title: Text(
          "Select Your Language",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
      body: LanguageList(),
      backgroundColor: Color.fromRGBO(28, 7, 48, 1),
    );
  }
}

class LanguageList extends StatefulWidget {
  const LanguageList({Key? key}) : super(key: key);

  @override
  State<LanguageList> createState() => _LanguageListState();
}

class _LanguageListState extends State<LanguageList> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.all(15),
      crossAxisSpacing: 15,
      mainAxisSpacing: 40,
      crossAxisCount: 3,
      children: [
        languagebox("English"),
        languagebox("Afrikaans"),
        languagebox("Arabic"),
        languagebox("Bengali"),
        languagebox("Bulgarian"),
        languagebox("Catalan"),
        languagebox("Chinese"),
        languagebox("Croatian"),
        languagebox("Czech"),
        languagebox("French"),
        languagebox("Filipino"),
        languagebox("Finnish"),
        languagebox("German"),
        languagebox("Greek"),
        languagebox("Gujarati"),
        languagebox("Hindi"),
        languagebox("Hungarian"),
        languagebox("Italian"),
        languagebox("Japanese"),
        languagebox("Javanese"),
        languagebox("Kannada"),
        languagebox("Korian"),
        languagebox("Latin"),
        languagebox("Malayalam"),
        languagebox("Persian"),
        languagebox("Polish"),
        languagebox("Portuguese"),
        languagebox("Punjabi"),
        languagebox("Romanian"),
        languagebox("Turkish"),
        languagebox("Spanish"),
        languagebox("Swedish"),
        languagebox("Tamil"),
        languagebox("Telugu"),
        languagebox("Tai"),
        languagebox("Vietnamese"),
      ],
    );
  }

  InkWell languagebox(String language) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const MyHomePage()));
      },
      child: Container(
        padding: EdgeInsets.only(bottom: 20),
        child: Center(
            child: Text(
          language,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black87),
        )),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.white),
        width: 115,
        height: 115,
      ),
    );
  }
}
