import 'dart:io';








//--------------------------------------- لیست حضور غیاب ----------------------------------------------
import 'package:flutter/material.dart';

import 'package:main/gen/assets.gen.dart';

class PresenceAbsence extends StatelessWidget {
  const PresenceAbsence({super.key});

  @override
  Widget build(BuildContext context) {
    var textthem = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("حضور غیاب",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24,24,24,24),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(Assets.images2.blackboard.path,scale: 3,),
             const   SizedBox(height: 32,),
                Container(
                  width: double.infinity,
                  height: size.height/12.3,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 180, 136, 255),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("نام درس",style: textthem.subtitle1,),
                      Text("فعالیت حضور",style: textthem.subtitle1,),
                      Text("تاریخ",style: textthem.subtitle1,),
                    ],
                  ),
                ),
                
                SizedBox(
                  height:size.height/1.9,
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: 23,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: size.height/14.4,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow:const [
                              BoxShadow(
                                color: Colors.deepPurple,
                                blurRadius: 5
                              )
                            ]
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("دانش فنی",style:textthem.subtitle1,),
                              Text("غایب",style:textthem.subtitle1,),
                              Text("1400/2/3",style:textthem.subtitle1,)
                            ],
                          ),
                        ),
                      );
                      
                    },
                  ),
                ),
                SizedBox(height: 50,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}