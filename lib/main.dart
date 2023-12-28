import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/home_page.dart';
import 'package:travel_app/information.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:travel_app/intro_page.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();

  bool initScreen= await preferences.getBool('initScreen')??true;


  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
        supportedLocales: [Locale('en', 'US'), Locale('uz', 'UZ')],
        path: 'assets/translations', // <-- change the path of the translation files
        fallbackLocale: Locale('en', 'US'),
        child: MyApp(initScreen:initScreen)
    ),

  );
}

class MyApp extends StatelessWidget {
 final bool initScreen;

  const MyApp({required this.initScreen});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Flutter Demo',

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: initScreen? Intro():HomePage(),
      routes: {
        Intro.id:(context)=>Intro(),
        HomePage.id:(context)=>HomePage(),
        Information.id:(context)=>Information(),
      },
    );
  }
}


