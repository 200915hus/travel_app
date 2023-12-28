import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/home_page.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://flutter.dev');

class Information extends StatefulWidget {
  const Information({super.key});

  static final String id = "information";

  @override
  State<Information> createState() => _InformationState();
}

class _InformationState extends State<Information> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF031F2A),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              alignment: Alignment.bottomLeft,
              height: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage("assets/images/5.jpg"),
                      fit: BoxFit.cover)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, HomePage.id);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.lightBlueAccent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 40,
                      width: 40,
                      child: Center(
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 150,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.only(bottom: 5),
                        child: Column(
                          children: [
                            Text(
                              "text11".tr(),
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                            Text(
                              "text12".tr(),
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text(
                              "4.7",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 35,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              alignment: Alignment.bottomLeft,
              child: Text(
                "text13".tr(),
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 360,
              padding: EdgeInsets.all(10),
              child: Text(
                "text14".tr(),
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            SizedBox(
              height: 85,
            ),
            Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        border:
                            Border.all(width: 1, color: Colors.lightBlueAccent),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.map,
                            color: Colors.lightBlueAccent,
                            size: 30,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "text15".tr(),
                            style: TextStyle(
                              color: Colors.lightBlueAccent,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(width: 15),
                        ],
                      ),
                    ),
                    onTap: () {
                      launch(
                          "https://www.google.com/maps/place/Jizzax+viloyati+Zomin+tumani+Bog'ishamol+MFY/@39.94943,68.3802994,17z/data=!3m1!4b1!4m6!3m5!1s0x38b24f3fbc4dc017:0x8f84684024d00498!8m2!3d39.949426!4d68.385165!16s%2Fg%2F11t83241d3?entry=ttu");
                    },
                  ),
                  InkWell(
                    onTap: () {
                      launch("https://uz.wikipedia.org/wiki/Zomin");
                    },
                    child: Container(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          border: Border.all(
                              width: 1, color: Colors.lightBlueAccent)),
                      child: Row(
                        children: [
                          Icon(
                            Icons.language,
                            color: Colors.lightBlueAccent,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "text16".tr(),
                            style: TextStyle(
                                color: Colors.lightBlueAccent, fontSize: 20),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
