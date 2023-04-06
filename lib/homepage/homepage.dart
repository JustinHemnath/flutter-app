import "package:flutter/material.dart";
import "package:flutter_app/controllers/practice_controller.dart";
import "package:get/get.dart";

class Homepage extends StatelessWidget {
  Homepage({super.key});

  final _words = ["Text1", "Text2", "Text3"];

  @override
  Widget build(BuildContext context) {
    PracticeController practicecontroller = Get.put(PracticeController());
    return Scaffold(
      appBar: AppBar(title: Text("HOME")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Obx(() => Text(
                        practicecontroller.count.value.toString(),
                      )),
                  ElevatedButton(
                      onPressed: () {
                        practicecontroller.increase();
                      },
                      child: Text("Increase"))
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}