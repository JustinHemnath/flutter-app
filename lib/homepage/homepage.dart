import "package:flutter/material.dart";
import "package:flutter_app/controllers/practice_controller.dart";
import "package:get/get.dart";
import '../practice/practicepage.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  final _words = ["Text1", "Text2", "Text3"];

  @override
  Widget build(BuildContext context) {
    PracticeController practicecontroller = Get.put(PracticeController());

    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "HOME",
            style: TextStyle(color: Colors.yellow),
          ),
          backgroundColor: Colors.red[900],
        ),
        body: Container(
          width: double.infinity,
          color: Colors.grey[100],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  practicecontroller.count.value.toString(),
                  style: const TextStyle(
                    fontSize: 60.0,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(25),
                      ),
                      color: Colors.red[900],
                    ),
                    child: IconButton(
                      color: Colors.white,
                      onPressed: () {
                        practicecontroller.increase();
                      },
                      icon: const Icon(Icons.add_rounded),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red[900],
                    ),
                    onPressed: () {
                      practicecontroller.reset();
                    },
                    child: const Text("RESET"),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(25),
                      ),
                      color: Colors.red[900],
                    ),
                    child: IconButton(
                      color: Colors.white,
                      onPressed: () {
                        practicecontroller.decrease();
                      },
                      icon: const Icon(Icons.remove),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
