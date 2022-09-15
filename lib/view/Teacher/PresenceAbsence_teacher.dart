// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:main/model/catrgorylist.dart';

import 'package:solar_datepicker/solar_datepicker.dart';

import '../studentScreen/list_category_screen.dart';


//------------------------ حضور غیاب ---------------------------------//



//--------------------- صفحه مربوط به دبیران 

class Fieldchool extends StatefulWidget {
  const Fieldchool({super.key});

  @override
  State<Fieldchool> createState() => _FieldchoolState();
}

class _FieldchoolState extends State<Fieldchool> {
  TextEditingController _data = TextEditingController();
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
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          elevation: 0,
          title:const Text(
            "کتاب های درسی ",
            style: TextStyle(color: Colors.black),
          )),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(12, 24, 12, 0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //تاریخ 
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
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
                          _data.text = getDateStr()!;
                        });
                      }
                    },
                    child:const Icon(Icons.calendar_today)),
             const   SizedBox(
                  width: 12,
                ),
                SizedBox(
                  height: 40,
                  width: 300,
                  child: TextField(
                    style:const TextStyle(fontSize: 16),
                     textAlign: TextAlign.start,
                         textAlignVertical: TextAlignVertical.bottom,
                    enabled: false,
                    controller: _data,
                    decoration: InputDecoration(
                        hintText: "تاریخ را وارد کنید ",
                        hintStyle:const TextStyle(fontSize: 12),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12))),
                  ),
                )
              ],
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
                  // childAspectRatio:1.4,
                  mainAxisExtent: 110,
                  crossAxisSpacing: 30,
                  mainAxisSpacing: 25,
                ),
                children: [
                  CategoryCart(
                      category: fieldchool[0],
                      onPressedd: () {
                        Get.to(PresenceAbsence_Teacher(
                          img: fieldchool[0].image,
                        ));
                      }),
                  CategoryCart(
                      category: fieldchool[1],
                      onPressedd: () {  
                        Get.to(PresenceAbsence_Teacher(
                          img: fieldchool[1].image,
                        ));
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//--------------------------کلاس--------------------------

class ClassSchool extends StatelessWidget {
   ClassSchool({this.onPressedd});
  final VoidCallback? onPressedd;
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
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                  gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisExtent: 110,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 20,
                  ),
                  children: [
                    CategoryCart(
                        category: classschool[0],
                        onPressedd: () {
                          Get.to(const Fieldchool());
                        }),
                    CategoryCart(
                        category: classschool[1],
                        onPressedd: () {
                          Get.to(const Fieldchool());
                        }),
                    CategoryCart(
                        category: classschool[2],
                        onPressedd: () {
                          Get.to(const Fieldchool());
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


// ---------------------------------------------------- لیست حضور غیاب ----------------
class PresenceAbsence_Teacher extends StatefulWidget {
  PresenceAbsence_Teacher({this.img});
  final String? img;

  @override
  State<PresenceAbsence_Teacher> createState() =>
      _PresenceAbsence_TeacherState();
}

class _PresenceAbsence_TeacherState extends State<PresenceAbsence_Teacher> {
  List<item> itemlist = [
    item(
        header: "محمدامین",
        body:
            "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)."),
    item(
        header: "امیر محمد",
        body:
            "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)."),
    item(
        header: "امیر علی",
        body:
            "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)."),
    item(
        header: "امیر طاها",
        body:
            "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)."),
    item(
        header: "امیر رضا",
        body:
            "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)."),
  ];
  double height = 50;
  int? selected;
  slectedraudio(int value) {
    setState(() {
      selected = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    var textthem = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title:const Text(
          "حضور غیاب",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        // surfaceTintColor: Colors.black,
        foregroundColor: Colors.black,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Center(
            child: Column(
              children: [
                Image.asset(
                  widget.img!,
                  scale: 4,
                ),
                Container(
                  height: size.height/13.4,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color:const Color.fromARGB(255, 211, 191, 14),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width:size.width/8.4 ,
                      ),
                    const  Text("نام "),
                      SizedBox(
                       width:size.width/6.4 ,
                      ),
                    const  Text("غیاب"),
                      SizedBox(
                        width: size.width/5.5,
                      ),
                     const Text("تاخیری"),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height/75.5,
                ),
                ExpansionPanelList.radio(
                  children: itemlist
                      .map((item) => ExpansionPanelRadio(
                          value: item.header!,
                          headerBuilder: (context, isExpanded) => ListTile(
                                  title: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    item.header!,
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  // SizedBox(width: 10,),
                                  Radio(
                                    value: 1,
                                    groupValue: selected,
                                    onChanged: (value) {
                                      setState(() {
                                        selected = value;
                                      });
                                    },
                                  ),
                                  const SizedBox(
                                    width: 29,
                                  ),
                                  Radio(
                                    value: 2,
                                    groupValue: selected,
                                    onChanged: (value) {
                                      setState(() {
                                        selected = value;
                                      });
                                    },
                                  )
                                ],
                              )),
                          body: bodelist()))
                      .toList(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}





//--------------------- بدنه ----------------------------
class bodelist extends StatelessWidget {
  const bodelist({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textthem = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    return ListTile(
      title: Column(
        children: [
          Row(
            children: [
              const Text(
                "دلایل :",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(
                width: 12,
              ),
              SizedBox(
                width:size.width/1.8 ,
                height: size.height/14.9,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "دلیل",
                      hintStyle:const TextStyle(fontSize: 15),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8))),
                ),
              ),
            ],
          ),
          SizedBox(
            height: size.height/45.5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {}, child: Text("ثبت")),
              SizedBox(
                width: size.width/14.5,
              ),
              ElevatedButton(onPressed: () {}, child: Text("ویرایش"))
            ],
          )
        ],
      ),
    );
  }
}
