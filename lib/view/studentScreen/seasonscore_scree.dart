




// --------------------------------- صفحه نمرات پودمان --------------------------------------------------


import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:main/gen/assets.gen.dart';
import 'package:main/model/catrgorylist.dart';
import 'package:main/view/studentScreen/list_category_screen.dart';
//دسته بندی پودمان 
class SeasonScore extends StatelessWidget {
  const SeasonScore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text("نمرات پودمان "),
        centerTitle: true,
      ),
      body:GridView(
      physics:const BouncingScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 20
      ),
    gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 3,
      mainAxisExtent: 120,
      crossAxisSpacing: 12,
      mainAxisSpacing: 10,
    ),
    children: [
      PodemanandYersScreen(category: podemanlist[0], onPressedd: (){
       Get.to(MonthlyLesson(title: "پودمان 1",image: podemanlist[0].image,)); 
      }),
      PodemanandYersScreen(category: podemanlist[1], onPressedd: (){

        Get.to(MonthlyLesson(title: "پودمان 2",image: podemanlist[1].image,)); 
      }),
     PodemanandYersScreen(category: podemanlist[2], onPressedd: (){

        Get.to(MonthlyLesson(title: "پودمان 2",image: podemanlist[2].image,)); 
      }),
     PodemanandYersScreen(category: podemanlist[3], onPressedd: (){

        Get.to(MonthlyLesson(title: "پودمان 2",image: podemanlist[3].image,)); 
      }),
     
      
    ],
     ),
    );
  }
}

// <--------------------------------------------------------------------------------------->

//لیست نمرات پودمان 
class MonthlyLesson extends StatelessWidget {
   MonthlyLesson({this.image,this.title});
  final String?image;
  final String?title;
 
  @override
  Widget build(BuildContext context) {
      var textthem = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
        title: Text(title!),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(23,30,23,0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
               children: [
                Image.asset(image!,scale: 3,),
               SizedBox(height: size.height/18.4,),
              Container(
                  height: size.height/14.4,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(23),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("نام درس",style: textthem.headline3,),
                      Text("نمره ",style: textthem.headline3,),
                      Text("نمرات شایستگی",style: textthem.headline3,),
                    ],
                  ),
                ),
           SizedBox(
                  height: size.height/1.9,
                  child: ListView.builder(
                    itemCount: lessonList.length,
                    physics: BouncingScrollPhysics(),
                  itemBuilder:(context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: double.infinity,
                        height: size.height/15.5,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(23),
                          boxShadow:const [
                            BoxShadow(
                              color: Colors.blue,
                              blurRadius:3,
                            ),
                          ]
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(lessonList[index].name,style: textthem.headline5,),
                            Text(lessonList[index].Score!,style: textthem.headline5,),
                            Text(lessonList[index].Meritscore!,style: textthem.headline5,),
                          
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

