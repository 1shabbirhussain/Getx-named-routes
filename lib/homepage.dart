import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var code = "code";
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("home screen"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.toNamed("/otherpage/$code");
                },
                child: Text("goto Other page")),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed("/");
                },
                child: Text("Go to main ")),
            if (Get.parameters != null && Get.parameters.isNotEmpty)
              Text(
                  "Hello i got from Otherpage is ${Get.parameters["name"]} and ${Get.parameters["father"]}")
          ],
        ),
      ),
    ));
  }
}
