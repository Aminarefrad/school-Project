import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:main/gen/assets.gen.dart';
import 'package:main/view/studentScreen/list_category_screen.dart';
import 'package:main/view/studentScreen/viewmassege.dart';


//دسته بندی موارد انظباتی
class DisciplinaryCases extends StatelessWidget {
  const DisciplinaryCases({super.key});

  @override
  Widget build(BuildContext context) {
    var textthem = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      
      appBar: AppBar(
        title:const Text("موارد انضباطی "),
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24,25,24,0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(Assets.images2.presentation.path,scale: 4,),
              SizedBox(height: size.height/19.9,),
              SizedBox(
                height: size.height/1.7,
                child: ListView(
                  children: [
                    ConSendMaessege(onPressed: () =>Get.to(ViewMassege()) ,titile: "    دبیر فارسی",),
                    SizedBox(height: size.height/26.5,),
                    ConSendMaessege(onPressed: () =>Get.to(ViewMassege()) ,titile: "    دبیر دینی",)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
