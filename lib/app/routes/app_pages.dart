// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';
import 'package:linktreeclone/app/modules/home/bindings/forgot_binding.dart';
import 'package:linktreeclone/app/modules/home/bindings/login_binding.dart';
import 'package:linktreeclone/app/modules/home/bindings/registration_binding.dart';
import 'package:linktreeclone/app/modules/home/bindings/welcome_binding.dart';
import 'package:linktreeclone/app/modules/home/views/forgot_password_view.dart';
import 'package:linktreeclone/app/modules/home/views/login_view.dart';
import 'package:linktreeclone/app/modules/home/views/registration_view.dart';
import 'package:linktreeclone/app/modules/home/views/welcome_view.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.WELCOME,
      page: () => WelcomeView(),
      binding: WelcomeBinding(),
    ),
     GetPage(
      name: _Paths.FORGOT,
      page: () => ForgotPasswordView(),
      binding: ForgotPasswordBinding(),
    ),
    GetPage(
      name: _Paths.REGISTRATION,
      page: () => RegistrationView(),
      binding: RegistrationBinding(),
    ),
  ];
}
