import 'package:flutter/material.dart';
import 'dart:js' as js;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Text(
              "[서울엄마아빠택시]",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "2025-02-01 ~ 2025-12-15",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Colors.grey
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 1000,
              height: 3,
              color: Colors.black,
            ),
            SizedBox(
              height: 10,
            ),
            Image.network(
                "https://storage.googleapis.com/papa-static-live/images/system/banner/1741080442101_ba0ee0dd-14a6-4ea3-a427-82647c5f2867.png"
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                // JavaScript의 showAlert() 함수 호출
                js.context.callMethod('doEventButtonClick');
              },
              child: Text("JavaScript 실행"),
            ),
          ],
        ),
      ),
    );
  }
}