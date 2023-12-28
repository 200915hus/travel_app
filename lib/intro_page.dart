import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'home_page.dart';

class Intro extends StatefulWidget {
  const Intro({super.key});
  static final String id="intro-page";

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF031F2A),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.bottomCenter,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 50,),
                  Image(image: AssetImage("assets/images/1.jpg"),),
                  SizedBox(height: 15,),
                  Text(
                    "Oddiy hayotdan qoching",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Atrofingizdagi ajoyib tajribalarni kashf eting\n va sizni qiziqarli yashashaga majbur qiling!",
                      style: TextStyle(color: Colors.white,fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),flex: 2,
          ),
          Expanded(
              child: Container(
                padding: EdgeInsets.all(20),
                alignment: Alignment.bottomCenter,
                child:InkWell(
                  onTap: ()async{
                    SharedPreferences preferences = await SharedPreferences.getInstance();
                    await preferences.setBool('initScreen',false);



                    Navigator.pushReplacementNamed(context, HomePage.id);
                  },
                  child:  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.cyanAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: double.infinity,
                    height: 60,
                    child: Center(
                      child: Text(
                        "Start",
                        style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                )
              )),
        ],
      ),
    );
  }
}
