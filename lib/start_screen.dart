import 'dart:io';
import 'package:flutter/material.dart';
import 'package:fyp_ui/analyseAgain_screen.dart';
import 'package:image_picker/image_picker.dart';


class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  _StartScreenState createState() => _StartScreenState();
}


class _StartScreenState extends State<StartScreen> {

  File? file;
  ImagePicker image = ImagePicker();
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
                    child: file == null
                      ? const Icon(
                    Icons.image,
                    size: 100,
                  )
                      : Image.file(
                    file!,
                    fit: BoxFit.fill,)
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: GestureDetector(
                  onTap: (){
                   getgall();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                    ),
                    width: 300,
                    height: 80,
                    child:const Center(
                      child: Text(
                        "Upload an Image",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                           // color: Colors.white
                        ),
                      ),
                    ) ,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: GestureDetector(
                  onTap: (){
                    getcam();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                    ),
                    width: 300,
                    height: 80,
                    child:const Center(
                      child: Text(
                        "Open Your Camera",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          // color: Colors.white
                        ),
                      ),
                    ) ,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AnalyseAgainScreen()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color(0xffFF12B8),
                    ),
                    width: 300,
                    height: 80,
                    child:const Center(
                      child: Text(
                        "Identify",
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
            ],
          ),
        );
  }

  getcam() async {
    // ignore: deprecated_member_use
    var img = await image.getImage(source: ImageSource.camera);
    setState(() {
      file = File(img!.path);
    });
  }

  getgall() async {
    // ignore: deprecated_member_use
    var img= await image.getImage(source: ImageSource.gallery);
    setState(() {
      file = File(img!.path);
    });
  }
}