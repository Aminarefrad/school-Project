import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:main/gen/assets.gen.dart';
import 'package:main/view/studentScreen/viewmassege.dart';

import 'list_category_screen.dart';


//صفحه پیام ارسالی 
class SendMassege extends StatelessWidget {
  const SendMassege({super.key});

  @override
  Widget build(BuildContext context) {
     var textthem = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("پیام ارسال شده",),
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24,25,24,0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(Assets.images2.message.path,scale: 4,),
              SizedBox(height: size.height/14.6,),
              SizedBox(
                height: size.height/1.9,
                child: ListView(
                  children: [
                    ConSendMaessege(onPressed: () =>Get.to(ViewMassege()) ,titile: "پیام از طرف مدیر مدرسه",),
                    SizedBox(height: size.height/25.8,),
                    ConSendMaessege(onPressed: () =>Get.to(ViewMassege()) ,titile: "پیام از طرف مدیر مدرسه",)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}