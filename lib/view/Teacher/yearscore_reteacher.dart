// ignore_for_file: camel_case_types, use_key_in_widget_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:main/gen/assets.gen.dart';
import 'package:main/model/catrgorylist.dart';
import 'package:main/view/studentScreen/list_category_screen.dart';
import 'package:solar_datepicker/solar_datepicker.dart';

// -------------------------------------- لیست کارنامه سالانه ---------------------//



//---------------------------------  درس های مربوط به دبیران ---------------------//
class YearsScoreField extends StatefulWidget {
  const YearsScoreField({super.key});

  @override
  State<YearsScoreField> createState() => _YearsScoreFieldState();
}

class _YearsScoreFieldState extends State<YearsScoreField> {
  TextEditingController _data2 = TextEditingController();
  DateTime? pickedDate;

  String? getDateStr() {
    if (pickedDate == null) {
      return null;
    }
    final f = Jalali.fromDateTime(pickedDate!).formatter;
    return '${f.yyyy}/${f.mm}/${f.dd}';
  }

  @override
  Widget build(BuildContext context) {
    var textthem = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("درس های مربوط "),
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(12,20,12,0),
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //تاریخ 
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: () async {
                        final picked = await showSolarDatePicker(
                          // useRootNavigator: false,

                          context: context,
                          textDirection: TextDirection.rtl,
                          initialDate: pickedDate ?? DateTime.now(),
                          locale: Locale('fa', 'IR'),
                          firstDate:
                              DateTime.now().subtract(Duration(days: 100 * 365)),
                          lastDate: DateTime.now(),
                          isPersian: true,
                          // initialDatePickerMode: SolarDatePickerMode.year,
                        );
                        if (picked != null) {
                          setState(() {
                            pickedDate = picked;
                            _data2.text = getDateStr()!;
                          });
                        }
                      },
                      child: Image.asset(
                        Assets.images2.calendar1.path,
                        scale: 15,
                      )),
                  SizedBox(
                    width: 12,
                  ),
                  SizedBox(
                    height: 40,
                    width: 300,
                    child: TextField(
                      textAlign: TextAlign.start,
                      textAlignVertical: TextAlignVertical.bottom,
                      style: TextStyle(fontSize: 10),
                      enabled: false,
                      controller: _data2,
                      decoration: InputDecoration(
                          hintText: "تاریخ را وارد کنید ",
                          hintStyle: TextStyle(fontSize: 12),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12))),
                    ),
                  )
                ],
              ),
             
             
              SizedBox(
                height: size.height/16.3,
              ),
              Directionality(
                textDirection: TextDirection.ltr,
                child: GridView(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18, vertical: 15),
                  gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    // childAspectRatio:(1.4),
                    mainAxisExtent: 120,
                    crossAxisSpacing: 30,
                    mainAxisSpacing: 25,
                  ),
                  children: [
                    CategoryCart(
                        category: fieldchool[0],
                        onPressedd: () {
                          Get.to(Yearscore_Screen(image: fieldchool[0].image,));
                        }),
                    CategoryCart(
                        category: fieldchool[1],
                        onPressedd: () {
                          Get.to(Yearscore_Screen(image: fieldchool[1].image,));
                        }),
                    CategoryCart(
                        category: fieldchool[2],
                        onPressedd: () {
                          Get.to(Yearscore_Screen(image: fieldchool[2].image,));
                        }),
                    CategoryCart(
                        category: fieldchool[3],
                        onPressedd: () {
                          Get.to(Yearscore_Screen(image: fieldchool[3].image,));
                        }),
                    CategoryCart(
                        category: fieldchool[4],
                        onPressedd: () {
                          //حضور غیاب ثبت
                          Get.to(Yearscore_Screen(image: fieldchool[4].image,));
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

///-------------------------- کلاس --------------------------------//
class ClassSchoolScore_Years extends StatelessWidget {
  const ClassSchoolScore_Years({this.onPressedd});
  final VoidCallback? onPressedd;
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
                          Get.to(const YearsScoreField());
                        }),
                    CategoryCart(
                        category: classschool[1],
                        onPressedd: () {
                          Get.to(const YearsScoreField());
                        }),
                    CategoryCart(
                        category: classschool[2],
                        onPressedd: () {
                          Get.to(const YearsScoreField());
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

///------------------------ سال های تحصیلی ---------------------------------------
class Yearscore_teaher extends StatelessWidget {
  const Yearscore_teaher({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" سال تحصیلی"),
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: true,
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
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    // childAspectRatio:(1.4),
                    mainAxisExtent: 100,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 10,
                  ),
                  children: [
                    CategoryCart(
                        category: YersScorelist[0],
                        onPressedd: () {
                          Get.to(const ClassSchoolScore_Years());
                        }),
                    CategoryCart(
                        category: YersScorelist[1],
                        onPressedd: () {
                          Get.to(const ClassSchoolScore_Years());
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

//-------------------- صفحه نمرات ------------------------------//
class Yearscore_Screen extends StatelessWidget {
  Yearscore_Screen({this.image});
  final String? image;
  @override
  Widget build(BuildContext context) {
        var textthem = Theme.of(context).textTheme;
      var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title:const Text("نمرات سالانه"),
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                Image.asset(
                  image!,
                  scale: 4,
                ),
                SizedBox(
                  height: size.height/25.5,
                ),
                Container(
                  height: size.height/15.5,
                  decoration: BoxDecoration(
                      color:const Color.fromARGB(255, 189, 167, 4),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children:const [
                      Text("نام "),
                      Text("نام درس  "),
                      Text("نمره "),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height/1.9,
                  child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: size.height/10.5,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color:const Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow:const [
                                BoxShadow(
                                  color: Color.fromARGB(255, 189, 167, 4),
                                  blurRadius: 1,
                                )
                              ]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("محمدامین \n تخشیده",style: textthem.subtitle1,),
                              Text("شیمی",style: textthem.subtitle1,),
                              SizedBox(
                                width: size.width/6.2,
                                height: size.height/12.3,
                                child: TextFormField(
                                  style:const TextStyle(fontSize: 10),
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(9))),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: size.height/45.5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                        width: size.width/2.5,
                        height: size.height/18.4,
                        child: ElevatedButton(
                          onPressed: () {},
                          child:const Text("ثبت"),
                        )),
                    SizedBox(
                        width: size.width/2.5,
                        height: size.height/18.4,
                        child: ElevatedButton(
                          onPressed: () {},
                          child:const Text("ویرایش"),
                        )),
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
