// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linktreeclone/app/modules/home/views/forgot_password_view.dart';
import 'package:linktreeclone/app/utils/constants/colors.dart';

class checkbox extends StatefulWidget {
  const checkbox({Key? key}) : super(key: key);

  @override
  State<checkbox> createState() => _checkboxState();
}

class _checkboxState extends State<checkbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.black;
      }
      return kPrimaryColor;
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(
              checkColor: Colors.white,
              fillColor: MaterialStateProperty.resolveWith(getColor),
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value!;
                });
              },
            ),
            const Text(
              "Remember me",
              style: TextStyle(color: Colors.grey, fontSize: 11.0),
            )
          ],
        ),
        TextButton(
            onPressed: () {
              Get.to(() => ForgotPasswordView());
            },
            // ignore: prefer_const_constructors
            child: const Text(
              'Forgot Password?',
              style: TextStyle(color: kPrimaryColor, fontSize: 15.0),
            )),
      ],
    );
  }
}
