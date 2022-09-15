// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:main/gen/assets.gen.dart';

import 'package:main/model/catrgorylist.dart';
import 'package:solar_datepicker/solar_datepicker.dart';

import '../studentScreen/list_category_screen.dart';

// -------------------------------------- صفحه ثبت نمرات نمرات ماهانه دبیران --------------------//

//------------------------- درس های مربوط به دبیران -----///
class MonthlyField extends StatefulWidget {
  const MonthlyField({super.key});

  @override
  State<MonthlyField> createState() => _MonthlyFieldState();
}

class _MonthlyFieldState extends State<MonthlyField> {
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
        title: Text("درس های مربوط"),
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [

              // تاریخ 
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
                      child: Image.asset(Assets.images2.calendar1.path,scale: 15,)),
                  SizedBox(
                    width: size.width/18.1,
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
                height: size.height/23.2,
              ),
              Directionality(
                textDirection: TextDirection.ltr,
                child: GridView(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                  gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    // childAspectRatio:(1.4),
                    mainAxisExtent: 100,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 10,
                  ),
                  children: [
                    CategoryCart(
                        category: fieldchool[0],
                        onPressedd: () {
                          Get.to(Monthlyscore(image:fieldchool[0].image ,));
                        }),
                    CategoryCart(
                        category: fieldchool[1],
                        onPressedd: () {
                          Get.to(Monthlyscore(image:fieldchool[1].image));
                        }),
                    CategoryCart(
                        category: fieldchool[2],
                        onPressedd: () {
                          Get.to(Monthlyscore(image:fieldchool[2].image));
                        }),
                    CategoryCart(
                        category: fieldchool[3],
                        onPressedd: () {
                          Get.to(Monthlyscore(image:fieldchool[3].image));
                        }),
                    CategoryCart(
                        category: fieldchool[4],
                        onPressedd: () {
                          //حضور غیاب ثبت
                          Get.to(Monthlyscore(image:fieldchool[4].image));
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
// -------------------------------- کلاس ----------------------------//
class ClassSchoolScore extends StatelessWidget {
  const ClassSchoolScore({this.onPressedd});
  final VoidCallback? onPressedd;
  @override
  Widget build(BuildContext context) {
    var textthem = Theme.of(context).textTheme;
      var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title:const Text(
          "کلاس",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(12,20,12,0),
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
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
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
            
                          Get.to(const MonthlyField());
                        }),
                    CategoryCart(
                        category: classschool[1],
                        onPressedd: () {
                          Get.to(const MonthlyField());
                          //حضور غیاب ثبت
                        }),
                    CategoryCart(
                        category: classschool[2],
                        onPressedd: () {
                          Get.to(const MonthlyField());
                          //حضور غیاب ثبت
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

// -----------------------------ماه سال --------------------/// 
class Monthly extends StatelessWidget {
  const Monthly({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title:const Text(
          "ماه سال",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(12,20,12,0),
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
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    // childAspectRatio:(1.4),
                    mainAxisExtent: 100,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 10,
                  ),
                  children: [
                    CategoryCart(
                        category: categorymonth[0],
                        onPressedd: () {
                        
                          Get.to(const ClassSchoolScore());
                        }),
                    CategoryCart(
                        category: categorymonth[1],
                        onPressedd: () {
                          Get.to(const ClassSchoolScore());
                        }),
                    CategoryCart(
                        category: categorymonth[2],
                        onPressedd: () {
                          Get.to(const ClassSchoolScore());
                        }),
                    CategoryCart(
                        category: categorymonth[3],
                        onPressedd: () {
                          Get.to(const ClassSchoolScore());
                        }),
                    CategoryCart(
                        category: categorymonth[4],
                        onPressedd: () {
                          Get.to(const ClassSchoolScore());
                        }),
                    CategoryCart(
                        category: categorymonth[5],
                        onPressedd: () {
                          Get.to(const ClassSchoolScore());
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


// ----------------------- صفحه نمرات  ------------------////
class Monthlyscore extends StatelessWidget {
  Monthlyscore({this.image});
  var image;
  @override
  Widget build(BuildContext context) {
    var textthem = Theme.of(context).textTheme;
      var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        title:const Text(
          "نمرات ماهانه",
          style: TextStyle(color: Colors.black),
        ),
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
                  height: size.height/40.2,
                ),
                Container(
                  height: size.height/14.5,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color:const Color.fromARGB(255, 138, 182, 164),
                      borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children:const [
                      Text(
                        "نام",
                      ),
                      Text(
                        "نام درس",
                      ),
                      Text(
                        "نمره",
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height/1.9,
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 12,
                      itemBuilder: ((context, index) {
                        return Padding(
                          padding: const EdgeInsets.fromLTRB(8, 10, 12, 15),
                          child: Container(
                            decoration: BoxDecoration(
                                color:const Color.fromARGB(255, 247, 247, 247),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow:const [
                                  BoxShadow(color: Colors.blue, blurRadius: 2)
                                ]),
                            height: size.height/9.5,
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text("محمد امین \nتخشیده"),
                                Text("دانش فنی"),
                                SizedBox(
                                  width: size.width/6.9,
                                  height: size.height/13.4,
                                  child: TextFormField(
                                    style: TextStyle(fontSize: 10),
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
                      })),
                ),
                SizedBox(
                  height: size.height/33.2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                        width: 150,
                        height: 50.0,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text("ثبت"),
                        )),
                    SizedBox(
                        width: 150,
                        height: 50.0,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text("ویرایش"),
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
