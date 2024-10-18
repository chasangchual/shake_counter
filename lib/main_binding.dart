import 'package:get/get.dart';
import 'package:shake_counter/shake_counter_controller.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ShakeCounterController().init());
  }
}
