import 'dart:io';
import 'package:flutter/material.dart';
import 'package:fyp_ui/results_screen.dart';
import 'package:fyp_ui/start_screen.dart';

class AnalyseAgainScreen extends StatefulWidget {
  const AnalyseAgainScreen({Key? key}) : super(key: key);

  @override
  _AnalyseAgainScreenState createState() => _AnalyseAgainScreenState();
}

class _AnalyseAgainScreenState extends State<AnalyseAgainScreen> {

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Color(0xff292929),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Center(
                child: Container(
                    width: 250,
                    height: 250,
                    color: Colors.white,
                    child: Icon(Icons.image,
                      size: 100,)
                ),
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Container(
                width: 300,
                height: 80,
                child: const Center(
                  child: Text(
                    "This is the Name ",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ResultsScreen()));
                },
                child: Container(
                  width: 300,
                  height: 80,
                  child: const Center(
                    child: Text(
                      "More Info?",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => StartScreen()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xffFF12B8),
                  ),
                  width: 300,
                  height: 80,
                  child: const Center(
                    child: Text(
                      "Identify Again",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
  }
}