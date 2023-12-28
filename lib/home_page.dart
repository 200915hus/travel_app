import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/information.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static final String id = "home_page";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void dialog(){
    AwesomeDialog(
        context: context,
        dialogType: DialogType.info,
        animType: AnimType.rightSlide,
        title: 'Are you sure change the language',
        desc: 'Please ,press the button',
        btnOkText: "English",
        btnCancelText: "Uzbek",
        btnCancelOnPress: () {
          setState(() {
            context.setLocale(Locale("uz","UZ"));
          });
        },
    btnOkOnPress: () {
          setState(() {
            context.setLocale(Locale("en","US"));
          });
    },
    )..show();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF031F2A),
        body: ListView(
          children:[
         InkWell(
           onTap: (){
             Navigator.pushNamed(context, Information.id);
           },
           child: Container(
             child: Column(
               children: [
                 Container(
                   padding: EdgeInsets.only(left: 25),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("text1".tr(),style: TextStyle(color: Colors.white,fontSize: 30),),
                       InkWell(
                         onTap: (){
                           // context.setLocale(Locale("uz","UZ"));
                           dialog();
                         },
                         child: Container(
                           child: Icon(Icons.language,size: 35,color: Colors.lightBlueAccent,),),
                       ),
                     ],
                   ),
                 ),
                 Container(
                   margin: EdgeInsets.only(left: 20, right: 20, top: 15),
                   height: 60,
                   width: double.infinity,
                   decoration: BoxDecoration(
                       color: Colors.blueGrey,
                       borderRadius: BorderRadius.circular(10)),
                   child: TextField(
                     decoration: InputDecoration(
                       border: InputBorder.none,
                       hintText: "text2".tr(),
                       hintStyle: TextStyle(fontSize: 25),
                       prefixIcon: Icon(
                         Icons.search,
                         size: 30,
                         color: Colors.white,
                       ),
                     ),
                   ),
                 ),

                 Container(
                   padding: EdgeInsets.only(top: 25,left: 25,),
                   alignment: Alignment.bottomLeft,
                   child: Text(
                     "text3".tr(),
                     style: TextStyle(color: Colors.white,fontSize: 25),),),
                 SizedBox(
                   height: 30,
                 ),
                 Container(
                   padding: EdgeInsets.only(left: 15,right: 10),
                   height: 250,
                   child: ListView(
                     scrollDirection: Axis.horizontal,
                     children: [
                       _image(
                           image: "assets/images/aral.jpg",
                           text1: "text4".tr(),
                           text2: "text5".tr()),
                       _image(
                           image: "assets/images/2.jpg",
                           text1: "text6".tr(),
                           text2: "text7".tr()),
                       _image(
                           image: "assets/images/bochka.jpg",
                           text1: "text8".tr(),
                           text2: "text9".tr()),
                     ],
                   ),
                 ),
                 SizedBox(
                   height: 20,
                 ),
                 Container(
                   padding: EdgeInsets.only(left: 15),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       Text(
                         "text10".tr(),
                         style: TextStyle(
                             color: Colors.white,
                             fontWeight: FontWeight.bold,
                             fontSize: 25),
                       ),
                     ],
                   ),
                 ),
                 itemList(image: "assets/images/zomin.jpg",text1: "text11".tr(),text2: "Jizzax",text3: "4.7"),
                 itemList(image: "assets/images/2.jpg",text1: "text12".tr(),text2: "Jizzax",text3: "4.7"),
               ],
             ),
           ),
         )
          ]

        ));
  }

  Widget _image({image, text1, text2,}) {
    return Container(
        margin: EdgeInsets.only(left: 10,right: 10),
        height: 230,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                image: AssetImage(
          image,
        ),fit: BoxFit.cover),
        ),
        child: Container(
          alignment: Alignment.bottomLeft,
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 10),
                alignment: Alignment.bottomLeft,
                  child: Column(
                    children: [
                      Text(
                        text1,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      Text(text2,style: TextStyle(color: Colors.white),),
                    ],
                  ),
                ),

            ],
          ),
        ));
  }

  Widget itemList({required String image,text1,text2,text3}) {
    return Container(
      margin: EdgeInsets.only(bottom: 26,left: 26,right: 26),
      alignment: Alignment.bottomLeft,
      height: 190,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: AssetImage(image),fit: BoxFit.cover
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 5,left: 10),
                child: Column(
                  children: [
                    Text(
                      text1,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(text2,style: TextStyle(color: Colors.white),),
                  ],
                ),
              ),
              SizedBox(width: 10,),
              Container(
                child:Row(
                  children: [
                    Text(text3,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                    SizedBox(width: 6,),
                    Icon(Icons.star,color: Colors.yellow,size: 35,),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

}
