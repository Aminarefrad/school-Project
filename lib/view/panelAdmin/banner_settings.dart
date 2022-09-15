

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import 'package:main/gen/assets.gen.dart';
import 'package:main/model/catrgorylist.dart';
import 'package:main/view/studentScreen/list_category_screen.dart';

//------------------------------------------- تنظیمات بنر --------------------///





//--------------------- صفحه انتخاب تصاویرر -------------------------------//
class Bannersettings extends StatefulWidget {
  const Bannersettings({super.key});

  @override
  State<Bannersettings> createState() => _BannersettingsState();
}

class _BannersettingsState extends State<Bannersettings> {
  File? image;
  Future pickimage()async{
 
final image=  await ImagePicker().pickImage(source: ImageSource.gallery);
  if(image==null)return;
  final imagetempory=File(image.path);
  setState(() {
    this.image=imagetempory;
  });

  }
  
  @override
  Widget build(BuildContext context) {
        var textthem = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: Text("انتخاب تصاویر",style: TextStyle(color: Colors.black),)
      ,centerTitle: true,
      foregroundColor: Colors.black,
      backgroundColor: Colors.white,
      elevation: 0,

      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(12,20,12,0),
        child: SafeArea(
          child: Center(
            child: Column(
              
              children: [
                Container(
                  decoration: BoxDecoration(
                    boxShadow:const[
                      BoxShadow(color: Colors.black,blurRadius: 4),
                    ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
                  ),
                  width: double.infinity,
                  height: size.height/1.9,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: image!=null?Image.file(image!,fit: BoxFit.cover,):Image.asset(Assets.images2.applicationSettings.path,scale: 5,)),
                ),

                SizedBox(height: size.height/23.4,),
                ElevatedButton(onPressed: (){pickimage();},
                 child: Text("انتخاب عکس از گالری")),
SizedBox(height: 12,),
                 SizedBox(
                  width: size.width/2,
                  height:size.height/20.4,
                   child: ElevatedButton(onPressed: (){},
                   child: Text("ارسال ")),
                 )
              ],
            )
          ),
        ),
      ),
    );
  }
}

//------------------------- صفحه اصلی -------------------//

class Home_Screen_baner extends StatelessWidget {
  const Home_Screen_baner({super.key});

  @override
  Widget build(BuildContext context) {
    var textthem = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "بنر",
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
                        category: Banerlist[0],
                        onPressedd: () {
                          // صفحه انتخاب تصاویرر 
                          Get.to(Bannersettings());
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