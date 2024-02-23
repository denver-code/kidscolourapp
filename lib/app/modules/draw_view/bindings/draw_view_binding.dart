import 'package:get/get.dart';

import '../controllers/draw_controller.dart';

class DrawViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DrawViewController>(
      () => DrawViewController(),
    );
  }
}
