import 'package:get/get.dart';
import 'package:linktreeclone/app/modules/home/controllers/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<LoginController>(LoginController());
  }
}
