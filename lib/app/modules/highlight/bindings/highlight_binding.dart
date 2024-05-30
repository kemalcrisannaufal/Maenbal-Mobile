import 'package:get/get.dart';

import '../controllers/highlight_controller.dart';

class HighlightBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HighlightController>(
      () => HighlightController(),
    );
  }
}
