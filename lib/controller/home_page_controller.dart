import 'package:get/get.dart';

class HomePageController extends GetxController {
  RxDouble boxHeight = RxDouble(200);
  RxDouble boxWidth = RxDouble(200);
  void onIncreeseBox() {
    if (boxHeight.value == 400) {
      return;
    }
    boxHeight = RxDouble(boxHeight.value + 100);
    boxWidth = RxDouble(boxWidth.value + 100);
  }

  void onDecreeseBox() {
    if (boxHeight.value == 100) {
      return;
    }
    boxHeight = RxDouble(boxHeight.value - 100);
    boxWidth = RxDouble(boxWidth.value - 100);
  }
}
