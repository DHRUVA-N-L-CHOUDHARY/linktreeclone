// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:linktreeclone/app/utils/constants/size_config.dart';
import 'package:linktreeclone/app/utils/constants/strings.dart';


class buildCard extends StatelessWidget {
  const buildCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            openpic,
            // 'images/mainicon.svg',
            // padding: EdgeInsets.all(5.0),
            // width: double.infinity,
            height: SizeConfig(context).getProportionateScreenHeight(200),
          )
        ]);
  }
}
