import 'package:get/get.dart';
import 'package:soccer/app/data/providers/provider.dart';
import 'package:soccer/app/routes/app_pages.dart';

class LoginController extends GetxController {
  var email = "".obs;
  var password = "".obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void login(String email, String password) {
    MatchProvider().login(email, password).then((value) {
      if (value['message'] == "success") {
        Get.toNamed(Routes.HOME);
      } else {
        Get.snackbar("Error", value['message']);
      }
    });
  }
}
