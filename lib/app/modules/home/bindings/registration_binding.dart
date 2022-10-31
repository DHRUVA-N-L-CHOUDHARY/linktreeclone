import 'package:get/get.dart';
import 'package:linktreeclone/app/modules/home/controllers/registration_controller.dart';

class RegistrationBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<RegistrationController>(RegistrationController());
  }
}
