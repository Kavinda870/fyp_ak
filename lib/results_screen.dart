import 'package:flutter/material.dart';

import 'home_screen.dart';

class ResultsScreen extends StatefulWidget {
  const ResultsScreen({Key? key}) : super(key: key);

  @override
  State<ResultsScreen> createState() => _ResultsScreenState();
}

class _ResultsScreenState extends State<ResultsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Center(
              child: Container(
                  width: 250,
                  height: 250,
                  color: Colors.grey,
                  child: Icon(Icons.image,
                    size: 100,)
              ),
            ),
          ),


          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Container(
                  width: 300,
                  height: 250,
                  color: Colors.grey,
                  child: Column(
                    children:  [
                      Container(
                        alignment: Alignment.topLeft,
                        child: const Text(
                          "This is the Name ",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            //color: Colors.white,
                          ),
                        ),
                      ),

                      Container(
                        alignment: Alignment.topLeft,
                        child: const Text(
                          "Description",
                          //textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 23,
                            //fontWeight: FontWeight.bold,
                            //color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Home()));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color(0xff292929),
                ),
                width: 300,
                height: 80,
                child: const Center(
                  child: Text(
                    "Back to Home",
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
