// ignore_for_file: camel_case_types

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:main/gen/assets.gen.dart';
import 'package:main/model/catrgorylist.dart';
import 'package:main/view/studentScreen/list_category_screen.dart';

//------------------ پیام ------------------------//




// ----------------------سال تحصیلی ----------------------------------
class MessageAdmin extends StatelessWidget {
  const MessageAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    var textthem = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "کلاس",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(12, 20, 12, 0),
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Directionality(
                textDirection: TextDirection.ltr,
                child: GridView(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    // childAspectRatio:(1.4),
                    mainAxisExtent: 100,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 10,
                  ),
                  children: [
                    CategoryCart(
                        category: classschool[0],
                        onPressedd: () {
                          Get.to( Fild_School(year: classschool[0].name));
                        }),
                    CategoryCart(
                        category: classschool[1],
                        onPressedd: () {
                          Get.to( Fild_School(year: classschool[1].name));
                        }),
                    CategoryCart(
                        category: classschool[2],
                        onPressedd: () {
                          Get.to( Fild_School(year: classschool[2].name,));
                        }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ------------------------ رشته تحصیلی -------------------------------//

class Fild_School extends StatelessWidget {
   Fild_School({super.key,this.year});
  final String? year;
  @override
  Widget build(BuildContext context) {
    var textthem = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "رشته تحصیلی",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(12, 20, 12, 0),
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Directionality(
                textDirection: TextDirection.ltr,
                child: GridView(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    // childAspectRatio:(1.4),
                    mainAxisExtent: 100,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 10,
                  ),
                  children: [
                    CategoryCart(
                        category: fieldstudy[0],
                        onPressedd: () {
                          Get.to( ListStudents(imag: fieldstudy[0].image,name: fieldstudy[0].name,year1: year,));
                        }),
                    CategoryCart(
                        category: fieldstudy[1],
                        onPressedd: () {
                          Get.to( ListStudents(imag: fieldstudy[1].image,name: fieldstudy[1].name,year1: year,));
                        }),
                    CategoryCart(
                        category: fieldstudy[2],
                        onPressedd: () {
                          Get.to( ListStudents(imag: fieldstudy[2].image,name: fieldstudy[2].name,year1: year,));
                        }),
                        CategoryCart(
                        category: fieldstudy[3],
                        onPressedd: () {
                          Get.to( ListStudents(imag: fieldstudy[3].image,name: fieldstudy[3].name,year1: year,));
                        }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ------------------------------لیست دانش اموزان ---------------// 
class ListStudents extends StatelessWidget {

  ListStudents({this.imag,this.onPressed,this.name,this.year1 });
  final String? imag;
  final VoidCallback? onPressed;
  final String? name;
  final String? year1;
  @override
  Widget build(BuildContext context) {
    var textthem = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    return Scaffold(
    appBar: AppBar(title: Text("لیست دانش اموزان",style: TextStyle(color: Colors.black),),foregroundColor: Colors.black, centerTitle: true,backgroundColor: Colors.white,elevation: 0,),
    body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12,20,12,0),
        child: Center(
          child: Column(
            children: [
              Image.asset(imag!,scale: 5,),
              SizedBox(height: size.height/14.5,),
              SizedBox(
                height: size.height/14.4,
                width: size.width/1.4,
                child:  TextField(
                      style:const TextStyle(fontSize: 16),
                       textAlign: TextAlign.start,
                           textAlignVertical: TextAlignVertical.bottom,
                      decoration: InputDecoration(
                          hintText: "نام دانش اموز ",
                          prefixIcon: Icon(CupertinoIcons.search),
                          hintStyle:const TextStyle(fontSize: 12),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12))),
                    ),
              )
              ,SizedBox(height: size.height/24.2,),
              Column(
                children: [
                  SizedBox(
                    height: size.height/1.9,
                    child: ListView.builder(
                      itemCount: namestudy.length,
                      itemBuilder: (context, index) {
                      
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                          Get.to(  SendMassege(image: namestudy[index].image,name: namestudy[index].name,paye:name!,year:year1! ,));
                          },
                          child: Container(
                            height: size.height/18.2,
                            width: double.infinity,
                          decoration: BoxDecoration(
                            boxShadow:const [BoxShadow(color: Colors.black,blurRadius: 2)],
                            color:const Color.fromARGB(255, 255, 255, 255),borderRadius: BorderRadius.circular(4)),
                          child: Row(children: [
                           ClipRRect(
                            borderRadius: BorderRadius.circular(4),
                            child: Image.asset(namestudy[index].image,height: size.height/20.3,)),
                        
                            Text(namestudy[index].name,style: textthem.headline1,)
                          ]),
                          ),
                        ),
                      );
    
                    },),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ),
    );
  }
}



//----------- ارسال پیام ---------------------------------------//
class SendMassege extends StatelessWidget {
  const SendMassege({super.key,this.image,this.name,this.paye,this.year});
final String?image;
final String? name;
final String?paye;
final String?year;
  @override
  Widget build(BuildContext context) {
      var textthem = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title:const Text("ارسال پیام",style: TextStyle(color: Colors.black,),),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12,20,12,0),
          child: Center(
            child: Column(
              children: [
                Image.asset(image!,scale: 4,),
                SizedBox(height: size.height/34.5,),
                Text("نام و نام خانوادگی:${name!}",style: textthem.subtitle1,),
                Text("رشته تحصیلی:${paye!}",style: textthem.subtitle1,),
                Text("سال تحصیلی:${year}",style: textthem.subtitle1,),
      
                TextField(
          keyboardType: TextInputType.multiline,
          minLines: 10,//Normal textInputField will be displayed
          maxLines: null,// w hen user presses enter it will adapt to it
          decoration: InputDecoration(
            hintText: "متن پیام خود را ارسال کنید ",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))
          ),
          ),
          SizedBox(height: size.height/26.3,),
          SizedBox(height: size.height/13.3,
          width: size.width/1.2,
          child: ElevatedButton(onPressed: (){}, child: Text('ارسال')),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}