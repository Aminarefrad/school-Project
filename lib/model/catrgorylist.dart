import 'package:flutter/material.dart';
import 'package:main/gen/assets.gen.dart';

class Categorys {
  String image;
  String name;
  String? Score;
  String? Meritscore;
  Categorys({
    required this.name,
    this.Score,
    this.Meritscore,
    required this.image,
  });

}

List<Categorys>categorylist=[
  Categorys( //1
  name: "حضور غیاب",
  
  image: Assets.images2.exam.path
  ),
  Categorys( //2
  name: " نمرات ماهانه",
  
  image: Assets.images2.document.path
  ),
  Categorys( //3
  name: "کارنامه سالانه",
 
  image: Assets.images2.book1.path
  ),
  Categorys( //4
  name: "نمره پودمان",
 
  image: Assets.images2.graduationCap1.path
  ),
  Categorys( //5
  name: "پیام های ارسالی",
  image: Assets.images2.message.path
  ),Categorys( //6
  name: "موارد انضباطی",
  image: Assets.images2.presentation.path
  ),
  //lenth ==>5
];


List<Widget> gridChild = [

  
];



List<Categorys>categorymonth=[
  Categorys(name: "مهر",image:Assets.images2.calendar1.path),//0
  Categorys(name: "ابان",image:Assets.images2.calendar2.path),
  Categorys(name: "اذر",image:Assets.images2.calendar3.path),
  Categorys(name: "دی",image:Assets.images2.calendar4.path),
  Categorys(name: "بهمن",image:Assets.images2.diwali.path),
  Categorys(name: "اسفند",image:Assets.images2.monthlyCalendar.path),
];


List<Categorys>podemanlist=[
  Categorys(name: "پودمان1 ", image:Assets.images2.school4.path,),
  Categorys(name: "پودمان 2", image: Assets.images2.school3.path),
  Categorys(name: "پودمان 2", image: Assets.images2.school1.path),
  Categorys(name: "پودمان 2", image: Assets.images2.school.path),
];


List<Categorys>YersScorelist=[
  Categorys(name: "نوبت اول ", image:Assets.images2.school.path,),
  Categorys(name:  "نوبت دوم ", image: Assets.images2.school1.path),
 
];

List<Categorys>lessonList=[
  Categorys(
  name: "دانش فنی",
  image:Assets.images1.lesson.path,
  Meritscore: "بالا تر از حد انتظاز",
  Score: "20",
  ),
  Categorys(
  Score: "15",
  Meritscore: "احراز شایستگی",
  name: "ریاضی",
  image: Assets.images1.lesson1.path
  ),
  Categorys(
    Score: "20",
    Meritscore: "بالاتر از حد انتظار",
  name: "دینی",
  image: Assets.images1.lesson2.path
  ),
  Categorys(
     Score: "20",
    Meritscore: "بالاتر از حد انتظار",
  name: "کاربرد فناوری",
  image: Assets.images1.onlineLearning.path
  ),
  Categorys(
     Score: "8",
    Meritscore: "عدم احزار شایستگی",
  name: "شیمی",
  image: Assets.images1.teacher.path
  ),
  Categorys(
     Score: "20",
    Meritscore: "بالاتر از حد انتظار",
  name: "فارسی",
  image: Assets.images1.teacher1.path
  ),
  Categorys(
     Score: "10",
    Meritscore: "عدم احزار شایستگی",
  name: "زیست ",
  image: Assets.images1.whiteboard.path
  ),
  Categorys(
     Score: "18",
    Meritscore: "بالاتر از حد انتظار",
  name: "عربی",
  image: Assets.images1.videoLesson.path
  ),
  
];



class item{
  String?header;
  String?body;
  item({this.body,this.header});
}


List<Categorys>categorylistteacher=[
  Categorys( //1
  name: " ثبت حضور غیاب",
  
  image: Assets.images2.bagpack.path
  ),
  Categorys( //2
  name: "ثبت نمرات ماهانه",
  
  image: Assets.images2.blackboard.path
  ),
  Categorys( //3
  name: "ثبت کارنامه سالانه",
 
  image: Assets.images2.openBook1.path
  ),
  Categorys( //4
  name: "ثبت نمره پودمان",
 
  image: Assets.images2.openBook.path
  ),

];

List fieldchool=[
  Categorys(name: "دانش فنی", image: Assets.images2.openBook.path),
  Categorys(name: "شیمی ", image: Assets.images2.computer.path),
  Categorys(name: "دینی", image: Assets.images2.computer1.path),
  Categorys(name: "جغرفیا", image: Assets.images2.exam.path),
  Categorys(name: " فارسی", image: Assets.images2.graduationCap.path),
];
List classschool=[
  Categorys(name: "دهم", image: Assets.images2.graduationCap.path),
  Categorys(name: " یازدهم", image: Assets.images2.graduationHat.path),
  Categorys(name: "  دوازدهم", image: Assets.images2.graduation.path),
  
];

List panelAdmin=[
  Categorys(name: "موارد انظباطی", image: Assets.images2.presentation.path),
  Categorys(name: "پیام ", image: Assets.images2.message.path),
  Categorys(name: " تنظیمات بنر ", image: Assets.images2.applicationSettings.path),
];

List fieldstudy=[
  Categorys(name: "الکتروتکنیک", image: Assets.images2.school.path),
  Categorys(name: "شبکه ", image: Assets.images2.school1.path),
  Categorys(name: "نرم افزار", image: Assets.images2.school2.path),
  Categorys(name: "الکترونیک", image: Assets.images2.school3.path),
  Categorys(name: "صنایع شیمیایی", image: Assets.images2.school4.path),
];
List namestudy=[

  Categorys(name: "  محمدامین تخشیده" , image: Assets.images2.graduated.path),
  Categorys(name: "امیر محمد کریمی  ", image: Assets.images2.graduated.path),
  Categorys(name: "امیر علی رضایی ", image: Assets.images2.graduated.path),
  Categorys(name: "محمدطاها رادمهر", image: Assets.images2.graduated.path),
  Categorys(name: "امیر رضا  امیری", image: Assets.images2.graduated.path),
  Categorys(name: "امیر رضا  محمدی", image: Assets.images2.graduated.path),
  Categorys(name: "امیر رضا  قاسمی", image: Assets.images2.graduated.path),
  Categorys(name: "امیر رضا  موسوی", image: Assets.images2.graduated.path),
  Categorys(name: "امیر رضا  احمدی ", image: Assets.images2.graduated.path),
  Categorys(name: "امیر رضا  مهرنیا ", image: Assets.images2.graduated.path),
];


List Banerlist=[
  Categorys(name: "انتخاب تصویر", image: Assets.images2.applicationSettings.path),
  
];