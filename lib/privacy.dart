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
      home: PrivacyPage(),
    );
  }
}

class PrivacyPage extends StatefulWidget implements BaseClass {
  const PrivacyPage({Key? key}) : super(key: key);

  @override
  State<PrivacyPage> createState() => _PrivacyPageState();
}

class _PrivacyPageState extends State<PrivacyPage> {
  @override
  Widget build(BuildContext context) {
    return PolicyPage();
  }
}

class PolicyPage extends StatelessWidget {
  const PolicyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 21, 54, 80),
      body: ListView(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.only(left: 8, top: 22),
              child: Column(
                children: [
                  Text(
                    "Privacy & Policy",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      color: Color.fromARGB(255, 9, 9, 9),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Text(
                      "Last updated on January 03.2022",
                      style: TextStyle(
                          color: Color.fromARGB(255, 112, 110, 110),
                          fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(14.0),
            child: Text(
              "Below are our dummy Privacy & Policy, which outline a lot of legal goodies, but the bottom line is it's our aim to always take care of both you, as a customer, or as a seller on our platform. ",
              style: TextStyle(
                  fontSize: 20, color: Color.fromARGB(255, 134, 124, 124)),
            ),
          ),
          Container(
            height: 600,
            width: double.infinity,
            child: Column(
              children: [
                //eklendi
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "Licensing Policy",
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Text(
                    "By visiting and/or taking any action on our template, you confirm that you are in agreement with and bound by the terms outlined below.These terms apply to the website,emails,or any other communication.",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 134, 124, 124)),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Column(
                      children: [
                        Text(
                          "Here are terms of our Standard License:",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.check_circle_rounded,
                          color: Color.fromARGB(255, 93, 225, 98),
                        ),
                        Expanded(
                            child: Text(
                          "The Standard License grants you a non-exclusive right to make use of template you have purchased.",
                          style: TextStyle(
                              fontSize: 17,
                              color: Color.fromARGB(255, 134, 124, 124)),
                        ))
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Icon(
                          Icons.check_circle_rounded,
                          color: Color.fromARGB(255, 93, 225, 98),
                        ),
                        Expanded(
                          child: Text(
                            "You are licensed to use the Item to create one End Product for yourself or for one client (a 'single application'). and the End Product can be distributed for Free. ",
                            style: TextStyle(
                                fontSize: 17,
                                color: Color.fromARGB(255, 134, 124, 124)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "If you opt for and Extended License:",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          )),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.check_circle_rounded,
                          color: Color.fromARGB(255, 93, 225, 98),
                        ),
                        Expanded(
                          child: Text(
                            "You are licensed to use the Item to create one End Product for yourself or for one client (a 'single application'). and the End Product maybe sold or distributed for free. ",
                            style: TextStyle(
                                fontSize: 17,
                                color: Color.fromARGB(255, 134, 124, 124)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 200,
            width: double.infinity,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Additional Policy",
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "By visiting and/or taking any action on  our template, you confirm that you are in agreement with and bound by the terms outlined below.These terms apply to the website, emails, or any other communication. ",
                      style: TextStyle(
                          fontSize: 17,
                          color: Color.fromARGB(255, 134, 124, 124)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
