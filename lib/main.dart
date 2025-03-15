import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1F5F9),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Add New Task
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    "assets/header.png",
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        CupertinoButton(
                          padding: EdgeInsets.zero,
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.white,
                          child: Icon(CupertinoIcons.xmark),
                          onPressed: () {},
                        ),
                        Spacer(),
                        Text(
                          "Add New Task",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ],
              ),

              // Task Title
              SizedBox(height: 20),
              Text(
                "Task Title",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Container(
                height: 55,
                padding: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Color(0xffE0E0E0)),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Task Title",
                    style: TextStyle(
                      color: Color(0xff1B1B1D),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),

              // Category

              // Date & Time

              // Note

              // Button
            ],
          ),
        ),
      ),
    );
  }
}
