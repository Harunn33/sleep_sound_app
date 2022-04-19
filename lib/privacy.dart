import 'package:flutter/material.dart';
import 'package:sleep_soundss/baseClass.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:PrivacyPage(),
    );
  }
}
class PrivacyPage extends StatefulWidget implements BaseClass {
  const PrivacyPage({ Key? key }) : super(key: key);

  @override
  State<PrivacyPage> createState() => _PrivacyPageState();
}

class _PrivacyPageState extends State<PrivacyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text("daha yapılmadı"),);
  }
}