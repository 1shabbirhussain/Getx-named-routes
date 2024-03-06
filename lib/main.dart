import 'package:asdfg/homepage.dart';
import 'package:asdfg/otherpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "My Navigation",
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      defaultTransition: Transition.leftToRightWithFade,
      getPages: [
        GetPage(
          name: "/",
          page: () => MyApp(),
        ),
        GetPage(
          name: "/home",
          page: () => HomePage(),
        ),
        // GetPage(
        //     name: "/otherpage",
        //     page: () => OtherPage(),
        //     transition: Transition.downToUp),

        GetPage(
            name: "/otherpage/:valuePassed",
            page: () => OtherPage(),
            transition: Transition.downToUp),
      ],
      home: SafeArea(
          child: Scaffold(
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                Get.toNamed("/home");
              },
              child: Text("Goto Home")),
        ),
      )),
    );
  }
}
