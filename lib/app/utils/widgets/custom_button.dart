import 'package:flutter/material.dart';
import 'package:linktreeclone/app/utils/constants/colors.dart';



class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    this.text,
    this.margins,
    this.press,
  }) : super(key: key);
  final String? text;
  final double? margins;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(margins??0),
      padding: EdgeInsets.all(margins??0),
      child: SizedBox(
      width: double.infinity,
      height: 50,
      child: TextButton(
        style: TextButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          foregroundColor: Colors.white,
          backgroundColor: kPrimaryColor,
        ),
        onPressed: press as void Function()?,
        child: Text(
          text!,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    )
    );
  }
}
