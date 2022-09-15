// ignore_for_file: prefer_const_constructors



// ------------------------------/  صفحه خانه /---------------------------------------------------------------

import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:main/Constants/slider.dart';
import 'package:main/expandeble.dart';
import 'package:main/gen/assets.gen.dart';
import 'package:main/model/catrgorylist.dart';

import 'package:main/Constants/my_string.dart';
import 'package:main/view/login_screen.dart';

import 'package:main/view/studentScreen/disciplinarycases.dart';
import 'package:main/view/studentScreen/monthlygrades_screen.dart';
import 'package:main/view/studentScreen/presenceabsence_screen.dart';
import 'package:main/view/studentScreen/score_yers.dart';
import 'package:main/view/studentScreen/seasonscore_scree.dart';
import 'package:main/view/studentScreen/send_massege.dart';


import 'list_category_screen.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

final GlobalKey<ScaffoldState> _key = GlobalKey();

class _HomeState extends State<Home> {
  // const Home({super.key});
  
// List<>category=[];
  @override
  Widget build(BuildContext context) {
    var textthem = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    double bodymargi = size.width / 10;

    return Scaffold(
      key: _key,
      drawer: Drawermenu(bodymargi: bodymargi, textthem: textthem),
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          automaticallyImplyLeading: false,
          title: TitleAppbar(textthem: textthem)),
    
    
    body:SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
           SizedBox(height: 20,),
            Sliderphoto(),
SizedBox(height: 25,),
          ////
          GridView(
            physics:const BouncingScrollPhysics(),
            shrinkWrap: true,
            
            padding: const EdgeInsets.symmetric(
              horizontal: 18,
              vertical: 15
            ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            // childAspectRatio:(1.4),
           mainAxisExtent: 100,
            crossAxisSpacing: 12,
            mainAxisSpacing: 10,
          ),
          children: [
            CategoryCart(category: categorylist[0], onPressedd: (){
              //حضور غیاب 
              Get.to(PresenceAbsence());
            }),
            CategoryCart(category: categorylist[1], onPressedd: (){
              //نمرات ماهانه
              Get.to(MonthlygradesHome());
            }),
            CategoryCart(category: categorylist[2], onPressedd: (){
              //نمرات سالانه 
              Get.to(ScoreYarsScreen());
            }),
            CategoryCart(category: categorylist[3], onPressedd: (){
              //نمرات پودمان
              Get.to(SeasonScore());
            }),
            CategoryCart(category: categorylist[4], onPressedd: (){
              //ارسال پیام 
              Get.to(SendMassege());
            }),
            CategoryCart(category: categorylist[5], onPressedd: (){
              ///موارد ارسالی
              Get.to(DisciplinaryCases());
            }),
            // CategoryCart(category: categorylist[6], onPressedd: (){}),
            
          ],
           ),
        ],
      ),
    ) ,
    );
  }
}
//dilaog and appbar 
class TitleAppbar extends StatelessWidget {
  const TitleAppbar({
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
            _key.currentState!.openDrawer();
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
                         const Text("محمدامین تخشیده",style: TextStyle(fontSize: 10),),
                        ],
                      ),
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                         const Text("پایه تحصیلی:",style: TextStyle(fontSize: 12),),
                         const Text("دوازدهم",style: TextStyle(fontSize: 10),),
                        ],
                      ),
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                         const Text("رشته تحصیلی:",style: TextStyle(fontSize: 12),),
                         const Text("الکتروتکنیک",style: TextStyle(fontSize: 10),),
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
//drawermenu
class Drawermenu extends StatelessWidget {
  const Drawermenu({
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
                  style: textthem.subtitle1,
                ),
                leading: Image.asset(
                  Assets.images2.exam.path,
                  height:size.height/18.5,
                ),
                onTap: () => Get.to(PresenceAbsence()),
                ),
            ListTile(
              title: Text(
                "نمرات ماهانه ",
                style: textthem.subtitle1,
              ),
              leading: Image.asset(
                Assets.images2.document.path,
                height: size.height/18.5,
              ),
              onTap: () => Get.to(MonthlygradesHome()),
            ),
            ListTile(
              title: Text(
                "کارنامه سالانه ",
                style: textthem.subtitle1,
              ),
              leading: Image.asset(
                Assets.images2.book1.path,
                height: size.height/18.5,
              ),
              onTap: () => Get.to(ScoreYarsScreen()),
            ),
            ListTile(
              title: Text(
                "نمرات پودمان ",
                style: textthem.subtitle1,
              ),
              leading: Image.asset(
                Assets.images2.graduationCap1.path,
                height: size.height/18.5,
              ),
              onTap: () => Get.to(SeasonScore()),
            ),
            ListTile(
              title: Text(
                "پیام های ارسالی",
                style: textthem.subtitle1,
              ),
              leading: Image.asset(
                Assets.images2.message.path,
                height: size.height/18.5,
              ),
              onTap: () => Get.to(SendMassege()),
            ),
            ListTile(
              title: Text(
                "موارد انظباتی",
                style: textthem.subtitle1,
              ),
              leading: Image.asset(
                Assets.images2.presentation.path,
                height:size.height/18.5,
              ),
              onTap: () => Get.to(DisciplinaryCases()),
            ),
           
            
          ],
        ),
      ),
    );
  }
}
