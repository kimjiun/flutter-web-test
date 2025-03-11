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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "[서울 엄마아빠택시 X 파파]",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Pretendard Variable',
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),

              SizedBox(
                height: 5,
              ),

              Text(
                "2025-02-01 ~ 2025-12-15",
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Pretendard Variable',
                  fontWeight: FontWeight.w500,
                  color: Colors.grey
                ),
              ),

              SizedBox(
                height: 20,
              ),

              Container(
                width: double.infinity,
                height: 2,
                color: Colors.black,
              ),

              SizedBox(
                height: 20,
              ),

              Image.network(
                  "https://storage.googleapis.com/papa-static-dev/images/system/banner/1741082024269_3aca5aa1-15c1-49fd-acfe-cf7c91643532.jpg"
              ),

              SizedBox(
                height: 40,
              ),

              TextButton(
                onPressed: () {
                  // JavaScript의 showAlert() 함수 호출
                  js.context.callMethod('doEventButtonClick');
                },
                style: TextButton.styleFrom(
                  minimumSize: Size(double.infinity, 52),
                  padding: EdgeInsets.zero,
                  backgroundColor: Color(0xFFE98791),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  splashFactory: NoSplash.splashFactory
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '파파에서 엄마아빠택시 이용방법',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontFamily: 'Pretendard Variable',
                        fontWeight: FontWeight.w600,
                        overflow: TextOverflow.ellipsis
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}