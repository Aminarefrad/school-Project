// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:main/Constants/my_string.dart';
import 'package:main/Constants/slider.dart';
import 'package:main/gen/assets.gen.dart';
import 'package:main/model/catrgorylist.dart';
import 'package:main/view/Teacher/PresenceAbsence_teacher.dart';
import 'package:main/view/Teacher/podmans_score_teacher.dart';
import 'package:main/view/Teacher/yearscore_reteacher.dart';
import 'package:main/view/login_screen.dart';
import 'package:main/view/studentScreen/list_category_screen.dart';
import 'monthlyscore_teacher.dart';
// ----------------------- صفحه اصلی ------------------------------//


final GlobalKey<ScaffoldState> _key1 = GlobalKey();
class Home_Teacher extends StatelessWidget {
  const Home_Teacher({super.key});

  @override
  Widget build(BuildContext context) {
      var textthem = Theme.of(context).textTheme;
      var size = MediaQuery.of(context).size;
      double bodymargi = size.width / 10;
    return Scaffold(
      drawer: Drawermenu_Teacher(bodymargi: bodymargi, textthem: textthem),
      key: _key1,
    appBar:AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      title:AppbarTitile_Teacher(textthem: textthem),
      automaticallyImplyLeading: false,
    ),
    body: Column(
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
       SizedBox(height: size.height/40.2,),
       //ُاسلایدر بخش  دبیران 
        Sliderphoto(),
        GridView(
            physics:const BouncingScrollPhysics(),
            shrinkWrap: true,
            
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 40
            ),
          gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            // childAspectRatio:(1.4),
           mainAxisExtent: 110,
            crossAxisSpacing: 50,
            mainAxisSpacing: 20,
            // childAspectRatio: 800
          ),
          children: [
            CategoryCart(category: categorylistteacher[0], onPressedd: (){
              //حضور غیاب 
              Get.to(ClassSchool ());
            }),
            CategoryCart(category: categorylistteacher[1], onPressedd: (){
              
            //نمرات ماهانه 
              Get.to(Monthly ());
            }),
            CategoryCart(category: categorylistteacher[2], onPressedd: (){
              
            //نمرات سالانه 
              Get.to(Yearscore_teaher());
            }),
            CategoryCart(category: categorylistteacher[3], onPressedd: (){
              
            //نمرات پودمان 
              Get.to(Podemanscore_teaher());
            }),
          ],
           ),
      ],
    ),
    );
  }
}
// ------------------------- َalert Dialog--------------------------// 

class AppbarTitile_Teacher extends StatelessWidget {
  const AppbarTitile_Teacher({
    Key? key,
    required this.textthem,
  }) : super(key: key);

  final TextTheme textthem;

  @override
  Widget build(BuildContext context) {
    return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      IconButton(
        onPressed: () {
          _key1.currentState!.openDrawer();
        },
        icon: Image.asset(Assets.icons.burgerBar.path),
      ),
      Text(
        MyStrings.titleSpashScreen,
        style: textthem.headline5,
      ),
      IconButton(
          onPressed: () {
            Get.defaultDialog(
              
                title: "اطلاعات کاربری",
                content:Column(
                  children: [
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                       const Text("نام ونام خانوادگی:",style: TextStyle(fontSize: 12),),
                       const Text("امید احمد زاده",style: TextStyle(fontSize: 10),),
                      ],
                    ),
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                       const Text("شماره پرسنل:",style: TextStyle(fontSize: 12),),
                       const Text("35108560",style: TextStyle(fontSize: 10),),
                      ],
                    ),
                    
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                       const Text(" شماره ملی:",style: TextStyle(fontSize: 12),),
                       const Text("3510537629",style: TextStyle(fontSize: 10),),
                      ],
                    ),
                  ],
                )
              
                );
          },
          icon: Image.asset(Assets.icons.user.path))
    ],
    );
  }
}

//-------------------drawermenu-------------------------//
class Drawermenu_Teacher extends StatelessWidget {
  const Drawermenu_Teacher({
    Key? key,
    required this.bodymargi,
    required this.textthem,
  }) : super(key: key);

  final double bodymargi;
  final TextTheme textthem;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Drawer(
      child: Padding(
        padding: EdgeInsets.only(right: bodymargi, left: bodymargi),
        child: ListView(
          children: [
            DrawerHeader(
                child: Center(
                    child: Image.asset(
              Assets.images.iconsSplash.path,
              scale: 3,
            ))),
           
       
            ListTile(
                title: Text(
                  "حضور و غیاب ",
                  style: textthem.headline4,
                ),
                leading: Image.asset(
                  Assets.images2.bagpack.path,
                  height:size.height/25.5,
                ),
                onTap: () => Get.to(Fieldchool()),
                ),
            ListTile(
              title: Text(
                "نمرات ماهانه ",
                style: textthem.headline4,
              ),
              leading: Image.asset(
                Assets.images2.blackboard.path,
                height: size.height/25.5,
              ),
              onTap: () => Get.to(MonthlyField()),
            ),
            ListTile(
              title: Text(
                "کارنامه سالانه ",
                style: textthem.headline4,
              ),
              leading: Image.asset(
                Assets.images2.openBook1.path,
                height: size.height/25.5,
              ),
              onTap: () => Get.to(YearsScoreField()),
            ),
            ListTile(
              title: Text(
                "نمرات پودمان ",
                style: textthem.headline4,
              ),
              leading: Image.asset(
                Assets.images2.openBook.path,
                height: size.height/18.5,
              ),
              onTap: () => Get.to(PodemanScoreField()),
            ),
            
            
           
            
          ],
        ),
      ),
    );
  }
}
