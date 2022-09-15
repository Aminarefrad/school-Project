// ignore_for_file: camel_case_types, prefer_const_literals_to_create_immutables

// ------------------------------ صفحه لاگین -------------------------------------------

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:main/gen/assets.gen.dart';
import 'package:main/view/studentScreen/home_screen.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({super.key});

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _formKey1 = GlobalKey<FormState>();
  TextEditingController usercontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var textthem = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;

    // final formkeyl=GlobalKey<FormState>();
    String username = "";
    String password = "";
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            children: [
              Image.asset(
                Assets.images.bg.path,
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
              SafeArea(
                child: Center(
                  child: GlassmorphicContainer(
                      width: 350,
                      height: 750,
                      borderRadius: 20,
                      blur: 20,
                      alignment: Alignment.bottomCenter,
                      border: 2,
                      linearGradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            const Color(0xFFffffff).withOpacity(0.1),
                            const Color(0xFFFFFFFF).withOpacity(0.05),
                          ],
                          stops: [
                            0.1,
                            1,
                          ]),
                      borderGradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          const Color(0xFFffffff).withOpacity(0.5),
                          const Color((0xFFFFFFFF)).withOpacity(0.5),
                        ],
                      ),
                      child: Center(
                        child: SingleChildScrollView(
                          child: SizedBox(
                            height: 800,
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              // crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  Assets.icons.login.path,
                                  scale: 4,
                                ),
                                const SizedBox(
                                  height: 40,
                                ),
                                Text(
                                  "ورود کاربر",
                                  style: textthem.subtitle1,
                                  textAlign: TextAlign.start,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Form(
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    key: _formKey1,
                                    child: TextFormField(
                                      controller: usercontroller,
                                      decoration: InputDecoration(
                                          hintText: "نام کاربری",
                                          filled: true,
                                          fillColor: const Color.fromARGB(
                                              61, 255, 255, 255),
                                          prefixIcon: IconButton(
                                            icon: Image.asset(
                                                Assets.icons.user.path),
                                            onPressed: () {},
                                          ),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12))),
                                      onChanged: ((value) {
                                        setState(() {
                                          username = value;
                                        });
                                      }),
                                      validator: ((value) {
                                        if (value != null &&
                                            value != int &&
                                            value.length < 10) {
                                          return "رمز عبور 10 کاراکتر باشد و حرف نمی باشد  ";
                                        } else {
                                          return null;
                                        }
                                      }),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Form(
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    key: _formKey,
                                    child: TextFormField(
                                      controller: passwordcontroller,
                                      decoration: InputDecoration(
                                          hintText: "رمز عبور",
                                          filled: true,
                                          fillColor: const Color.fromARGB(
                                              61, 255, 255, 255),
                                          prefixIcon: IconButton(
                                            icon: Image.asset(
                                                Assets.icons.padlock.path),
                                            onPressed: () {},
                                          ),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12))),
                                      validator: (value) {
                                        if (value != null &&
                                            value != int &&
                                            value.length < 10) {
                                          return "رمز عبور 10 کاراکتر باشد و حرف نباشد ";
                                        } else {
                                          return null;
                                        }
                                      },
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 32,
                                ),
                                SizedBox(
                                  height: size.height / 15.9,
                                  width: size.width / 2.1,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      final isvalidForm =
                                          _formKey.currentState!.validate();
                                      final isvalidForm2 =
                                          _formKey1.currentState!.validate();

                                      if (isvalidForm && isvalidForm2) {
                                        if (usercontroller.text ==
                                            passwordcontroller.text) {
                                          // Future.delayed(Duration(seconds: 2)).then((value){

                                          Get.to(Home());

                                          // });
                                        } else {
                                          // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("data")));
                                          Get.defaultDialog(
                                              title: "اخطار",
                                              content: const Text(
                                                "رمز عبور یا نام کاربری درست نمیباشد",
                                                textAlign: TextAlign.center,
                                              ),
                                              actions: [
                                                ElevatedButton(
                                                    onPressed: () {
                                                      Get.back();
                                                    },
                                                    child: const Text(
                                                        "دوباره تلاش کنید "))
                                              ]);
                                        }
                                      }
                                    },
                                    child: const Text("ورورد"),
                                    style: ButtonStyle(
                                        shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                        ),
                                        backgroundColor:
                                            MaterialStateProperty.resolveWith(
                                                (states) {
                                          if (states.contains(
                                              MaterialState.pressed)) {
                                            return Colors.blue;
                                          } else {
                                            return Colors.deepPurpleAccent;
                                          }
                                        })),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )),
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
