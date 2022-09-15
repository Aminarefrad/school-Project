

// ignore_for_file: prefer_const_constructors



//-------------------------------/ صفحه اسپلش اسکریین /------------------------------------------------


import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:main/gen/assets.gen.dart';

import 'package:main/Constants/my_string.dart';
import 'package:main/view/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
   
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
        return Login_Screen();
      }));
    });
  }
  @override
  Widget build(BuildContext context) {
    var textthem = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //images
            Image.asset(Assets.images.iconsSplash.path,height: size.height/3.08,),
            //text title
            Text(MyStrings.titleSpashScreen,),
            const SizedBox(
                height: 32,
              ),
              //loding
          const  SpinKitWave(
              color: Color.fromARGB(255, 147, 124, 211),
              size:40 ,
            )
          ],
        ),
      ),
    );
  }
}