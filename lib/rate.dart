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
      home:RatePAge(),
    );
  }
}
class RatePAge extends StatefulWidget implements BaseClass {
  const RatePAge({ Key? key }) : super(key: key);

  @override
  State<RatePAge> createState() => _RatePAgeState();
}

class _RatePAgeState extends State<RatePAge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text("daha yapılmadı"),);
  }
}