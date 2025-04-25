// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ResponsiveScreen extends StatelessWidget {
  const ResponsiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isSmallScreen = screenWidth < 600;

    return Scaffold(
      appBar: AppBar(
        title: Text('SmartLayout'),
      ),
      body: Center(
        child: isSmallScreen
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Hello! This is a responsive layout 😊",
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Image.asset('assets/images/pic.png', width: 150, height: 150),
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Hi! This is an adaptive layout 😎",
                    style: TextStyle(fontSize: 24),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(width: 20),
                  Image.asset('assets/images/pic.png', width: 150, height: 150),
                ],
              ),
      ),
    );
  }
}