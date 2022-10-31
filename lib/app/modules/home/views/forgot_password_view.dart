// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linktreeclone/app/modules/home/controllers/forgot_password_controller.dart';
import 'package:linktreeclone/app/utils/widgets/Custom_form_field.dart';
import 'package:linktreeclone/app/utils/widgets/appbar.dart';
import 'package:linktreeclone/app/utils/widgets/custom_button.dart';
import 'package:linktreeclone/app/utils/widgets/imagewidget.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController>
{
  @override
   Widget build(BuildContext context)
   {
    return Scaffold(
      appBar: const AppBarTemplate(text: "Forgot Password"),
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(top: 20.0),
          child: Center(
            child: ListView(
              padding: const EdgeInsets.all(8.0),
              children: [
                const buildCard(),
                const InputTextwidget(
                  initialText: 'Enter your email',
                  iconData: Icons.mail_outline,
                  option: true,
                ),
                DefaultButton(
                    text: "Reset Password", margins: 5.0, press: () {}),
              ],
            ),
          ),
        ),
      ),
    );
   }

}