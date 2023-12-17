// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false, home: DateApp()),
  );
}

class DateApp extends StatefulWidget {
  const DateApp({super.key});

  @override
  State<DateApp> createState() => _DateAppState();
}

class _DateAppState extends State<DateApp> {
  String year = "";
  int month = 0;
  String second = "";
  List<String> months = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December",
  ];

  changeEverySec() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        year = DateTime.now().year.toString();
        month = DateTime.now().month - 1;
        second = DateTime.now().second.toString();
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    changeEverySec();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Date & Time App",
          style: TextStyle(fontSize: 25),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 33, 40, 43),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Today's Date is Wednesday",
              style: TextStyle(fontSize: 27, color: Colors.white),
            ),
            SizedBox(
              height: 22,
            ),
            Text(
              "${months[month]} 23, $year",
              style: TextStyle(fontSize: 27, color: Colors.white),
            ),
            SizedBox(
              height: 22,
            ),
            Text(
              "11 : 44 : $second",
              style: TextStyle(fontSize: 27, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
