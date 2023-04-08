import "package:flutter/material.dart";
import "package:flutter_app/homepage/homepage.dart";
import "package:flutter_app/practice/textwidget.dart";
import "package:get/get.dart";

class Practicepage extends StatelessWidget {
  const Practicepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.to(Homepage());
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        title: const Text("Practice"),
      ),
      body: Textwidget(),
    );
  }
}
