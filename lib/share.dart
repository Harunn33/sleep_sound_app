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
      home:SharePage(),
    );
  }
}
class SharePage extends StatefulWidget implements BaseClass {
  const SharePage({ Key? key }) : super(key: key);

  @override
  State<SharePage> createState() => _SharePageState();
}

class _SharePageState extends State<SharePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text("Daha Yapılmadı"),);
  }
}