

// /--------------------------------------------// صفحه نمرات ماهانه //-------------------------------------------------

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:main/gen/assets.gen.dart';
import 'package:main/model/catrgorylist.dart';
import 'package:main/view/studentScreen/list_category_screen.dart';
//دسته بندی لیست نمرات ماهانه
class MonthlygradesHome extends StatelessWidget {
  const MonthlygradesHome({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text("نمرات ماهانه "),
        centerTitle: true,
      ),
      body:GridView(
      physics:const BouncingScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(
        horizontal: 21,
        vertical: 28
      ),
    gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 3,
      mainAxisExtent: 100,
      crossAxisSpacing: 12,
      mainAxisSpacing: 10,
    ),
    children: [
      CategoryCart(category: categorymonth[0], onPressedd: (){
        Get.to(MonthGrades(image:categorymonth[0].image,title: "نمرات مهر",));
      }),
      CategoryCart(category: categorymonth[1], onPressedd: (){
        Get.to(MonthGrades(image:categorymonth[1].image,title: "نمرات ابان",));
      }),
      CategoryCart(category: categorymonth[2], onPressedd: (){
        Get.to(MonthGrades(image:categorymonth[2].image,title: "نمرات اذر",));
      }),
      CategoryCart(category: categorymonth[3], onPressedd: (){
        Get.to(MonthGrades(image:categorymonth[3].image,title: "نمرات دی",));
      }),
      CategoryCart(category: categorymonth[4], onPressedd: (){
        Get.to(MonthGrades(image:categorymonth[4].image,title: "نمرات بهمن",));
      }),
      CategoryCart(category: categorymonth[5], onPressedd: (){
        Get.to(MonthGrades(image:categorymonth[5].image,title: "نمرات اسفند",));
      }),
      // CategoryCart(category: categorylist[6], onPressedd: (){}),
      
    ],
     ),
    );
  }
}

//لیست نمرات ماهانه 
class MonthGrades extends StatelessWidget {
 const MonthGrades({this.image,this.title});
  final String?image;
  final String?title;
  @override
  Widget build(BuildContext context) {
    var textthem = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    double bodymargi = size.width / 10;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(title!,style: textthem.headline3,),
        foregroundColor: Colors.black,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20,20,20,0.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(image!,scale: 4,),
                SizedBox(height: 30,),
                Container(
                  width: double.infinity,
                  height: size.height/14.6,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(192, 5, 221, 203),
                    borderRadius: BorderRadius.circular(23)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("نام درس",style:textthem.subtitle1,),
                      Text(" نمره",style:textthem.subtitle1,),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height/1.7,
                  child: ListView.builder(
                    itemCount: 10,
                    physics: BouncingScrollPhysics(),
                  itemBuilder:(context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: double.infinity,
                        height: size.height/15.5,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 236, 231, 231),
                          borderRadius: BorderRadius.circular(23),
                          boxShadow:const [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius:2,
                            ),
                          ]
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("دینی",style: textthem.subtitle1,),
                            Text("20",style: textthem.subtitle1,),
                          
                          ],
                        ),
                      ),
                    );
                  },
                  )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}