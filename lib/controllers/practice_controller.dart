import "package:get/get.dart";

class PracticeController extends GetxController {
  RxInt _count = 0.obs;
  RxInt get count => _count;

  void increase() {
    _count++;
  }

  void reset() {
    _count.value = 0;
  }

  void decrease() {
    _count--;
  }
}
