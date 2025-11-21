import 'package:get/get.dart';

class MainScreenController extends GetxController {
  var currentIndex = 0.obs;

  void changeIndex(int i) {
    currentIndex.value = i;
  }
}