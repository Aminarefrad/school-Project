// ignore_for_file: camel_case_types, use_key_in_widget_constructors

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:main/gen/assets.gen.dart';
import 'package:main/model/catrgorylist.dart';
import 'package:main/view/studentScreen/list_category_screen.dart';
import 'package:solar_datepicker/solar_datepicker.dart';

//---------------------------------  نمرات پودمان ------------------/





//---------------------------- صفحه مربوز به دبیران ---------------// 
class PodemanScoreField extends StatefulWidget {
  const PodemanScoreField({super.key});

  @override
  State<PodemanScoreField> createState() => _PodemanScoreFieldState();
}

class _PodemanScoreFieldState extends State<PodemanScoreField> {
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
        title:const Text("درس های مربوط "),
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
                        child: Image.asset(Assets.images2.calendar1.path,scale: 15,)),
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
                height: size.height/26.2,
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
                          Get.to(Podemanscore_Screen(image: fieldchool[0].image,));
                        }),
                    CategoryCart(
                        category: fieldchool[1],
                        onPressedd: () {
                          Get.to(Podemanscore_Screen(image: fieldchool[1].image,));
                        }),
                    CategoryCart(
                        category: fieldchool[2],
                        onPressedd: () {
                          Get.to(Podemanscore_Screen(image: fieldchool[2].image,));
                        }),
                    CategoryCart(
                        category: fieldchool[3],
                        onPressedd: () {
                          Get.to(Podemanscore_Screen(image: fieldchool[3].image,));
                        }),
                    CategoryCart(
                        category: fieldchool[4],
                        onPressedd: () {
                        
                          Get.to(Podemanscore_Screen(image: fieldchool[4].image,));
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

//------------------------------------کلاس--------------------------------/
class ClassSchoolScore_Podeman extends StatelessWidget {
  const ClassSchoolScore_Podeman({this.onPressedd,this.img});
  final VoidCallback? onPressedd;
  final String?img;
  @override
  Widget build(BuildContext context) {
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
                        category: classschool[0],
                        onPressedd: () {
                          //حضور غیاب
                          Get.to(const PodemanScoreField());
                        }),
                    CategoryCart(
                        category: classschool[1],
                        onPressedd: () {
                          Get.to(const PodemanScoreField());
                          //حضور غیاب ثبت
                        }),
                    CategoryCart(
                        category: classschool[2],
                        onPressedd: () {
                          Get.to(const PodemanScoreField());
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
//--------------------------------------پودمان -----------------------------/
class Podemanscore_teaher extends StatefulWidget {
  const Podemanscore_teaher({super.key});

  @override
  State<Podemanscore_teaher> createState() => _Podemanscore_teaherState();
}

class _Podemanscore_teaherState extends State<Podemanscore_teaher> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text(" پودمان ها  "),
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
                    mainAxisExtent: 120,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 10,
                  ),
                  children: [
                    CategoryCart(
                        category: podemanlist[0],
                        onPressedd: () {
                          //حضور غیاب
                          Get.to(const ClassSchoolScore_Podeman(
                            
                          ));
                        }),
                    CategoryCart(
                        category: podemanlist[1],
                        onPressedd: () {
                          Get.to(const ClassSchoolScore_Podeman(
                            
                          ));
                     
                        }),
                        CategoryCart(
                        category: podemanlist[2],
                        onPressedd: () {
                          Get.to(const ClassSchoolScore_Podeman(
                           
                          ));
                          
                        }),
                        CategoryCart(
                        category: podemanlist[3],
                        onPressedd: () {
                          Get.to(const ClassSchoolScore_Podeman(
                          
                          ));
                         
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

// ---------------------------------------------صفحه ثبت نمرات ---------------------
class Podemanscore_Screen extends StatefulWidget {
  Podemanscore_Screen({this.image});
  final String? image;

  @override
  State<Podemanscore_Screen> createState() => _Podemanscore_ScreenState();
}

class _Podemanscore_ScreenState extends State<Podemanscore_Screen> {
  final List<String> items = [
    'احزار\n شایستگی',
    'بالا تر از\n حد انتظار ',
    'نیاز به\n تلاش بیشتر ',
  ];
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
       var textthem = Theme.of(context).textTheme;
      var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title:const Text("نمرات پودمان"),
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
                  widget.image!,
                  scale: 4,
                ),
                SizedBox(
                  height: size.height/18.5,
                ),
                Container(
                  height: size.height/10.4,
                  decoration: BoxDecoration(
                      color:const Color.fromARGB(255, 42, 109, 197),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children:const [
                      Text("نام "),
                      Text("نام درس  "),
                      Text("نمره "),
                      Text("نمرات \nشایستگی")
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height/2.1,
                  child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 80,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color:const Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow:const [
                                BoxShadow(
                                  color: Color.fromARGB(255, 217, 224, 220),
                                  blurRadius: 1,
                                )
                              ]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("محمدامین \n تخشیده",style: textthem.subtitle1,),
                              Text("شیمی",style: textthem.subtitle1,),
                              SizedBox(
                                width: size.height/12.8,
                                height: size.height/18.3,
                                child: TextFormField(
                                  style: TextStyle(fontSize: 10),
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(9))),
                                ),
                              ),
                              DropdownButtonHideUnderline(
                                child: DropdownButton2(
                                  hint: Text(
                                    'انتخاب کردن',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Theme.of(context).hintColor,
                                    ),
                                  ),
                                  items: items
                                      .map((item) => DropdownMenuItem<String>(
                                            value: item,
                                            child: Text(
                                              item,
                                              style: const TextStyle(
                                                fontSize: 12,
                                              ),
                                            ),
                                          ))
                                      .toList(),
                                  value: selectedValue,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedValue = value as String;
                                    });
                                  },
                                  buttonHeight: 50,
                                  buttonWidth: 120,
                                  itemHeight: 80,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
            const    SizedBox(
                  height: 20,
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
