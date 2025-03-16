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
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    "Category",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: 15),
                  Container(
                    height: 48,
                    width: 48,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color(0xffDBECF6),
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 3),
                    ),
                    child: Image.asset("assets/document.png"),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 48,
                    width: 48,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color(0xffE7E2F3),
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 3),
                    ),
                    child: Image.asset("assets/calendar.png"),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 48,
                    width: 48,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color(0xffFEF5D3),
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 3),
                    ),
                    child: Image.asset("assets/trophy.png"),
                  ),
                ],
              ),

              // Date & Time
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Date",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        CupertinoButton(
                          color: Colors.white,
                          onPressed: () {},
                          child: Row(
                            children: [
                              Text(
                                "Date",
                                style: TextStyle(
                                  color: Color(0xff1B1B1D),
                                  fontSize: 18,
                                ),
                              ),
                              Spacer(),
                              Icon(
                                Icons.calendar_month,
                                color: Color(0xff1B1B1D),
                                size: 26,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Time",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        CupertinoButton(
                          color: Colors.white,
                          onPressed: () {},
                          child: Row(
                            children: [
                              Text(
                                "Time",
                                style: TextStyle(
                                  color: Color(0xff1B1B1D),
                                  fontSize: 18,
                                ),
                              ),
                              Spacer(),
                              Icon(
                                CupertinoIcons.clock,
                                color: Color(0xff1B1B1D),
                                size: 26,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              // Note

              // Button
              Spacer(),
              CupertinoButton(
                color: Color(0xff4A3780),
                borderRadius: BorderRadius.circular(50),
                onPressed: () {},
                child: Center(
                  child: Text(
                    "Save",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
