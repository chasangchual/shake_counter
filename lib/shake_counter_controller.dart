import 'package:get/get.dart';
import 'package:sensors_plus/sensors_plus.dart';

class ShakeCounterController extends GetxController {
  static ShakeCounterController get to => Get.find();
  static var XThreshold = 10;

  var _count = 0.obs;
  bool shaken = false;

  late AccelerometerEvent? currentEvent;

  ShakeCounterController init() {
    currentEvent = null;

    accelerometerEventStream().listen((AccelerometerEvent event) {
      if (currentEvent == null) {
        currentEvent = event;
      } else {
        if (((currentEvent!.x * event.x) < 0 &&
            event.x.abs() >= 1 &&
            (event.x.abs() - currentEvent!.x.abs()).abs() > XThreshold)) {
          shaken = !shaken;
          currentEvent = event;

          if (shaken) {
            _count.value++;
          }
        }
      }
    });

    // userAccelerometerEventStream().listen((UserAccelerometerEvent event) {
    //   Log.s.i(event);
    //   _count.value++;
    // });

    // gyroscopeEventStream().listen((GyroscopeEvent event) {
    //   Log.s.i(event);
    //   _count.value++;
    // });

    return this;
  }

  int get count => _count.value;
}
