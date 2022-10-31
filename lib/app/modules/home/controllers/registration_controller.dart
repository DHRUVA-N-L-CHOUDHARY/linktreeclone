// ignore_for_file: annotate_overrides, unnecessary_overrides

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:linktreeclone/app/modules/home/controllers/home_controller.dart';
import 'package:linktreeclone/fullscreendialog.dart';

class RegistrationController extends GetxController
{
   HomeController homeController = Get.find<HomeController>();
   void onInit() async {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  void login() async {
    CustomFullScreenDialog.showDialog();
    GoogleSignInAccount? googleSignInAccount =
        await homeController.googleSign.signIn();
    if (googleSignInAccount == null) {
      CustomFullScreenDialog.cancelDialog();
    } else {
      GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;
      OAuthCredential oAuthCredential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken);
      await homeController.firebaseAuth.signInWithCredential(oAuthCredential);
      CustomFullScreenDialog.cancelDialog();
    }
  }
}