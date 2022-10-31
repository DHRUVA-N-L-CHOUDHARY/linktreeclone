// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linktreeclone/app/modules/home/controllers/registration_controller.dart';
import 'package:linktreeclone/app/utils/constants/size_config.dart';
import 'package:linktreeclone/app/utils/widgets/Custom_form_field.dart';
import 'package:linktreeclone/app/utils/widgets/appbar.dart';
import 'package:linktreeclone/app/utils/widgets/custom_button.dart';
import 'package:linktreeclone/app/utils/widgets/imagewidget.dart';

class RegistrationView extends GetView<RegistrationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarTemplate(
        text: "Sign In",
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(top: 20.0),
          child: Center(
            child: ListView(
              padding: const EdgeInsets.all(8.0),
              children: [
                const buildCard(),
                InputTextwidget(
                    initialText: 'Username',
                    iconData: Icons.person_outline_rounded,
                    option: false,
                    height:
                        SizeConfig(context).getProportionateScreenHeight(90)),
                InputTextwidget(
                  initialText: 'Password',
                  iconData: Icons.lock_open_rounded,
                  option: false,
                  height: SizeConfig(context).getProportionateScreenHeight(90),
                ),
                InputTextwidget(
                  initialText: 'Confirm your Password',
                  iconData: Icons.lock_open_rounded,
                  option: false,
                  height: SizeConfig(context).getProportionateScreenHeight(90),
                ),
                // const checkbox(),
                DefaultButton(text: "Sign in", margins: 5.0, press: () {}),
                DefaultButton(
                    text: "Sign in With Google",
                    margins: 5.0,
                    press: () {
                      controller.login();
                    }),
                // Center(
                //     child: RichText(
                //   // ignore: prefer_const_constructors
                //   text: TextSpan(
                //     text: 'Don\'t have a account?',
                //     style: const TextStyle(
                //         fontSize: 15.0,
                //         color: Colors.black,
                //         fontWeight: FontWeight.normal),
                //     children: <TextSpan>[
                //       TextSpan(
                //           text: 'Register!',
                //           style: const TextStyle(
                //             fontWeight: FontWeight.bold,
                //             color: kPrimaryColor,
                //             fontSize: 17.0,
                //           ),
                //           recognizer: TapGestureRecognizer()
                //             ..onTap = () async {
                //               Get.toNamed("/registration");
                //             }),
                //     ],
                //   ),
                // )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
