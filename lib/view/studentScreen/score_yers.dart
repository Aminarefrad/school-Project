import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:main/gen/assets.gen.dart';
import 'package:main/model/catrgorylist.dart';
import 'list_category_screen.dart';



// ---------------------------------------------// صفحه نمرات سالانه //-------------------------------------------


//لیست دسته بندی نمرات سالانه
class ScoreYarsScreen extends StatelessWidget {
  const ScoreYarsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text("نمرات سالانه"),
        centerTitle: true,
      ),
      body:GridView(
      physics:const BouncingScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 12
      ),
    gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
                    // childAspectRatio:(1.4),
                    mainAxisExtent: 120,
                    crossAxisSpacing: 80,
                    mainAxisSpacing: 10,
    ),
    children: [
      ScoreCategoryYers(category: YersScorelist[0], onPressedd: (){
       Get.to(ScoreYers(titile: "نوبت اول",image:YersScorelist[0].image,titlecon: "نوبت اول",)); 
      }),
      ScoreCategoryYers(category: YersScorelist[1], onPressedd: (){
        Get.to(ScoreYers(titile: "نوبت دوم ",image:YersScorelist[1].image,titlecon: "نوبت دوم",));
      }),
     
      
    ],
     ),
    );
  }
}
 

 // لیست نمرات سالانه 
class ScoreYers extends StatelessWidget {
 ScoreYers({this.titile,this.image,this.titlecon});
final String? titile;
final String?image;
final String?titlecon;
  @override
  Widget build(BuildContext context) {
    var textthem = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(titile!,style: textthem.headline6,),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24,10,24,0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(image!,scale: 4,),
                SizedBox(height: size.height/19.9,)
      ,              Container(
                  height: size.height/12.5,
                  width: double.infinity,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)
                  ,color: Color.fromARGB(255, 230, 190, 73)
                  
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("نام درس ",style: textthem.subtitle1,),
                      Text(titlecon!,style: textthem.subtitle1,),
                      Text("نمرات شایستگی",style: textthem.subtitle1,),
                    
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height/1.7,
                  width: double.infinity,
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount:lessonList.length ,
                  itemBuilder:(context, index) {
                    
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color:const Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow:const [
                          BoxShadow(
                            color: Colors.amber,
                            blurRadius: 2,
                          )
                        ]
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                           Text(lessonList[index].name,style: textthem.subtitle1,),
                            Text(lessonList[index].Score!,style: textthem.subtitle1,),
                            Text(lessonList[index].Meritscore!,style: textthem.subtitle1,),
                        ],
                      ),
                    ),
                  );
                  },
                  ),
                )
              ],
            ),
      
          ),
        ),
      ),
    );
  }
}