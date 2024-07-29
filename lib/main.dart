import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

var img = r'E:\Flutter\roll_dice\roll_dice\lib\assets\dice-1.png';
var imgs = [
  r'E:\Flutter\roll_dice\roll_dice\lib\assets\dice-1.png',
  r'E:\Flutter\roll_dice\roll_dice\lib\assets\dice-2.png',
  r'E:\Flutter\roll_dice\roll_dice\lib\assets\dice-3.png',
  r'E:\Flutter\roll_dice\roll_dice\lib\assets\dice-4.png',
  r'E:\Flutter\roll_dice\roll_dice\lib\assets\dice-5.png',
  r'E:\Flutter\roll_dice\roll_dice\lib\assets\dice-6.png',
];

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.sizeOf(context).height;
    return MaterialApp(
      title: 'Roll Dice',
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.purpleAccent, Colors.pink])),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  img,
                  scale: 3,
                ),
                SizedBox(height: h * 0.15),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        img = imgs[Random().nextInt(6)];
                      });
                    },
                    child: const Text(
                      'Roll Dice',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
