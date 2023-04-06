import "package:get/get.dart";

class PracticeController extends GetxController {
  RxInt _count = 0.obs;

  void increase() {
    _count++;
  }
}
