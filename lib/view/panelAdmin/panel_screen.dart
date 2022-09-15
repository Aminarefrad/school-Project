

// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:main/Constants/my_string.dart';
import 'package:main/Constants/slider.dart';

import 'package:main/gen/assets.gen.dart';
import 'package:main/model/catrgorylist.dart';
import 'package:main/view/panelAdmin/banner_settings.dart';
import 'package:main/view/panelAdmin/message_admin.dart';

import '../studentScreen/list_category_screen.dart';
import 'disciplinarycases_admin.dart';


final GlobalKey<ScaffoldState> _key2 = GlobalKey();
class Panel_Screen extends StatelessWidget {
  const Panel_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    var textthem = Theme.of(context).textTheme;
      var size = MediaQuery.of(context).size;
      double bodymargi = size.width / 10;
    return Scaffold(
      
      drawer: Drawermenu_Admin(bodymargi: bodymargi, textthem: textthem),
      key: _key2,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title:  AppBar_Panel(textthem: textthem),
      ),
      body: Center(
        child: Column(
          children: [
           const Sliderphoto(),
            SizedBox(height: size.height/29.4,),
              GridView(
            physics:const BouncingScrollPhysics(),
            shrinkWrap: true,
            
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 40
            ),
          gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            // childAspectRatio:(1.4),
           mainAxisExtent: 110,
            crossAxisSpacing: 12,
            mainAxisSpacing: 10,
            // childAspectRatio: 800
          ),
          children: [
            CategoryCart(category:panelAdmin[0] , onPressedd: (){
           //موارد انباطی
              Get.to(Disciplinarycases());
            }),
            CategoryCart(category:panelAdmin[1] , onPressedd: (){
              
            //پیام 
              Get.to(MessageAdmin());
            }),
            CategoryCart(category:panelAdmin[2] , onPressedd: (){
              
            //تنظیمات بنر 
              Get.to(Home_Screen_baner());
            }),
            
          ],
           ),
          ],
        ),
      ),
    );
  }
}






//----------------------------- Drawermenu_Admin --------------------------------------//

class Drawermenu_Admin extends StatelessWidget {
  const Drawermenu_Admin({
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
                  "موارد انظباطی",
                  style: textthem.subtitle1,
                ),
                leading: Image.asset(
                  Assets.images2.presentation.path,
                  height:size.height/18.5,
                ),
                onTap: () => Get.to((Disciplinarycases())),
                ),
            ListTile(
              title: Text(
                "پبام",
                style: textthem.subtitle1,
              ),
              leading: Image.asset(
                Assets.images2.message.path,
                height: size.height/18.5,
              ),
              onTap: () => Get.to(MessageAdmin()),
            ),
            ListTile(
              title: Text(
                "تنظیمات بنر",
                style: textthem.subtitle1,
              ),
              leading: Image.asset(
                Assets.images2.applicationSettings.path,
                height: size.height/18.5,
              ),
              onTap: () => Get.to(Home_Screen_baner()),
            ),
          
            
          ],
        ),
      ),
    );
  }
}





//----------------------------------------appbar--------------------------------------//
class AppBar_Panel extends StatelessWidget {
  const AppBar_Panel({
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
      _key2.currentState!.openDrawer();
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