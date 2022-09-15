import 'package:flutter/material.dart';
import 'package:main/gen/assets.gen.dart';

import 'list_category_screen.dart';


class ViewMassege extends StatelessWidget {
  const ViewMassege({super.key});

  @override
  Widget build(BuildContext context) {
     var textthem = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    var texts="لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد";
    return Scaffold(
    appBar: AppBar(
      centerTitle: true,
      title:Text("موارد انضباطی",style: textthem.headline6,),
      elevation: 4,
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
    ),
    body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24,28,24,0),
        child: Center(
          child: MassegeText(texts: texts, textthem: textthem),
        ),
      ),
    ),
    );
  }
}
