// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:main/Constants/my_colors.dart';
import 'package:main/view/panelAdmin/banner_settings.dart';

import 'package:main/view/panelAdmin/panel_Screen.dart';

import 'view/studentScreen/home_screen.dart';


void main() {

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor:const Color.fromARGB(0, 255, 255, 255),
   statusBarIconBrightness: Brightness.dark,
   systemNavigationBarColor:const Color.fromARGB(0, 240, 240, 240),
   systemNavigationBarIconBrightness: Brightness.dark
   ));
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      textDirection: TextDirection.rtl,
      debugShowCheckedModeBanner: false,
   localizationsDelegates: [
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ],

  supportedLocales: [
    Locale('fa', ''), // English, no country code
    // Spanish, no country code
  ],
      theme: ThemeData(
        textTheme: const TextTheme(

              headline1: TextStyle(
                  fontFamily: 'dana',
                  fontSize: 10,
                  fontWeight: FontWeight.normal,
                  color: SolidColor.textTitle),

             subtitle1: TextStyle(
                  fontFamily: 'dana',
                  fontSize: 13,
                  fontWeight: FontWeight.normal,
                  color: SolidColor.textTitle,
                  ),

              bodyText1: TextStyle(
                  fontFamily: 'dana',
                  fontSize: 13,
                  color: SolidColor.textTitle,
                  fontWeight: FontWeight.w300),
              headline2: TextStyle(
                  fontFamily: 'dana',
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w300),
              headline3: TextStyle(
                  fontFamily: 'dana',
                  fontSize: 14,
                  color: SolidColor.textTitle,
                  fontWeight: FontWeight.w700),
              headline4: TextStyle(
                  fontFamily: 'dana',
                  fontSize: 14,
                  color: Color.fromARGB(255, 70, 70, 70),
                  fontWeight: FontWeight.w700),
              headline5: TextStyle(
                  fontFamily: 'dana',
                  fontSize: 14,
                  color: Color.fromARGB(255, 12, 8, 8),
                  fontWeight: FontWeight.w700)
  ),
      ),
      home: Home()
    );
  }
}

