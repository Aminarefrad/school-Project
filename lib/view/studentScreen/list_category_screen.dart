
import 'package:flutter/material.dart';
import 'package:main/gen/assets.gen.dart';
import 'package:main/model/catrgorylist.dart';





//----------------------------/// لیست طراحی دسته بندی  صفحه خانه دیگر قسمت ها ///--------------------------------------------




//دسته بندی صفحه اصلی 
class CategoryCart extends StatelessWidget {
  
 const CategoryCart({required this.category,required this.onPressedd});
  final Categorys category;
  final VoidCallback onPressedd;
  @override
  Widget build(BuildContext context) {
    
// const kCategoryCardImageSize = 110.0;
var textthem = Theme.of(context).textTheme;
var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onPressedd,
      child: Container(
        // width: 20,
        // height: 50,
        // height:size.height/50.8 ,
        // width: size.width/50.3,
        padding:const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(12),
          // ignore: prefer_const_literals_to_create_immutables
          boxShadow: [
            // ignore: prefer_const_constructors
            BoxShadow(
              color: Color.fromARGB(253, 211, 208, 208),
              blurRadius: 6.0,
              // spreadRadius: .05
            )
          ]
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset(category.image,
              height: size.height/18.5,
              ),
            ),
             SizedBox(height: size.height/120.9,),
            Text(category.name,style: textthem.headline1)
          ],
        ),
      ),
    );
  }
}


//دسته بندی صحفه نمرات ماهانه
class CategoryMonth extends StatelessWidget {
  
 const CategoryMonth({required this.category,required this.onPressedd});
  final Categorys category;
  final VoidCallback onPressedd;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
// const kCategoryCardImageSize = 110.0;
var textthem = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: onPressedd,
      child: Container(
        // height: size.height/12.9,
        // width: 100,
        padding:const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          // ignore: prefer_const_literals_to_create_immutables
          boxShadow: [
            // ignore: prefer_const_constructors
            BoxShadow(
              color: Colors.black,
              blurRadius: 4.0,
              spreadRadius: .05
            )
          ]
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset(category.image,
              height: size.height/8.5,
              ),
            ),
            const SizedBox(height: 50,),
            Text(category.name,)
          ],
        ),
      ),
    );
  }
}





//لیست  نمرات پودمان
class PodemanandYersScreen extends StatelessWidget {
  
 const PodemanandYersScreen({required this.category,required this.onPressedd});
  final Categorys category;
  final VoidCallback onPressedd;
  @override
  Widget build(BuildContext context) {
    
var textthem = Theme.of(context).textTheme;
var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onPressedd,
      child: Container(
        
        padding:const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          // ignore: prefer_const_literals_to_create_immutables
          boxShadow: [
            // ignore: prefer_const_constructors
            BoxShadow(
              color: Colors.black,
              blurRadius: 4.0,
              spreadRadius: .05
            )
          ]
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset(category.image,scale: 9,)
            ),
             SizedBox(height:size.height/1000.2 ,),
            Text(category.name)
          ],
        ),
      ),
    );
  }
}


//دسته بندی نمرات سالانه 
class ScoreCategoryYers extends StatelessWidget {
  
 const ScoreCategoryYers({required this.category,required this.onPressedd});
  final Categorys category;
  final VoidCallback onPressedd;
  @override
  Widget build(BuildContext context) {
    
const kCategoryCardImageSize = 110.0;
var textthem = Theme.of(context).textTheme;
var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onPressedd,
      child: Container(
       
        padding:const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          // ignore: prefer_const_literals_to_create_immutables
          boxShadow: [
            // ignore: prefer_const_constructors
            BoxShadow(
              color: Colors.black,
              blurRadius: 4.0,
              spreadRadius: .05
            )
          ]
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset(category.image,scale: 9,)
            ),
             SizedBox(height: size.height/1000.3,),
            Text(category.name,)
          ],
        ),
      ),
    );
  }
}

//دسته بندی ارسال پیام 
class ConSendMaessege extends StatelessWidget {
  ConSendMaessege({this.textthem,this.onPressed,this.titile});
final String? titile;
  final TextTheme? textthem;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    var textthem = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    return InkWell(
      onTap:onPressed ,
      child: Container(
        height: size.height/13.5,
        width: double.infinity,
        decoration: BoxDecoration(
          color:Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(5),
          boxShadow:const [
            BoxShadow(
              color: Color.fromARGB(255, 10, 65, 110),
              blurRadius: 5
            ),
          ]
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child:Image.asset(Assets.images2.school2.path,scale: 2,height: size.height/12.2,),) ,
          
            SizedBox(width: size.width/8.5,),
            Text(titile!,)
          ],
        ),
      ),
    );
  }
}



//متن اراسال پیام 
class MassegeText extends StatelessWidget {
  const MassegeText({
    Key? key,
    required this.texts,
    required this.textthem,
  }) : super(key: key);

  final String texts;
  final TextTheme textthem;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(Assets.images2.message.path,scale: 4,),
        SizedBox(height: size.height/12.2,),
    
        Card(
          elevation: 8,
          child: Container(
            height:size.height/1,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(texts,)
                ],
              ),
            ),
          ),
        ),
        Padding(padding: EdgeInsets.all(12))
      ],
    );
  }
}