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
      home:PremiumPage(),
    );
  }
}
class PremiumPage extends StatefulWidget implements BaseClass{
  const PremiumPage({ Key? key }) : super(key: key);

  @override
  State<PremiumPage> createState() => _PremiumPageState();
}

class _PremiumPageState extends State<PremiumPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text("Daha Yapılmadı"),);
  }
}
 