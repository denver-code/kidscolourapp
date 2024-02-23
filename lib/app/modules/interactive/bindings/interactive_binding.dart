import 'package:get/get.dart';

import '../controllers/interactive_controller.dart';

class InteractiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InteractiveController>(
      () => InteractiveController(),
    );
  }
}
