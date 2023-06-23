import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyp_ui/start_screen.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Center(
              child: Container(
                width: 150,
                height: 50,
                color: Colors.transparent,
                child:const Center(
                  child: Text(
                    "Venom",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ) ,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Container(
              width: 350,
              height: 350,
              color: Colors.transparent,
              child: Image.asset("images/logo.png"),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Center(
              child: Container(
                // width: 150,
                // height: 50,
                color: Colors.transparent,
                child:const Text(
                  "Identify Venomous\n         Species",
                  style: TextStyle(
                      fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ) ,
              ),
            ),
          ),

          Container(
            width: 150,
            height: 50,
            color: Colors.transparent,
            child:const Center(
              child: Text(
                "In Snap!",
                style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                  color: Color(0xff7D7D7D)
                ),
              ),
            ) ,
          ),

          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Center(
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => StartScreen()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xFF292929),
                  ),
                  width: 300,
                  height: 80,
                  child:const Center(
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                          fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                    ),
                  ) ,
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
