// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:linktreeclone/app/utils/constants/colors.dart';
import 'package:linktreeclone/app/utils/constants/size_config.dart';


class InputTextwidget extends StatefulWidget {
  final Function(String)? onChanged;
  final String? initialText;
  final IconData iconData;
  final bool option;
  final double height;
  final TextInputType keytype;
  final TextEditingController? textEditingController;
  const InputTextwidget({
    Key? key,
    required this.initialText,
    this.iconData = Icons.abc,
    required this.option,
    this.height = 10.0,
    this.keytype = TextInputType.text,
    this.textEditingController,
    this.onChanged
  }) : super(key: key);

  @override
  State<InputTextwidget> createState() => _InputTextwidgetState();
}

class _InputTextwidgetState extends State<InputTextwidget> {

  @override
  Widget build(BuildContext context) {
    if (widget.option) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Padding(
            padding:
                EdgeInsets.all(SizeConfig(context).getProportionatePadding()),
            child: TextFormField(
              keyboardType: widget.keytype,
              decoration: InputDecoration(
                border: const UnderlineInputBorder(),
                labelText: widget.initialText,
                prefixIcon: Icon(
                  widget.iconData,
                  color: kPrimaryColor,
                ),
              ),
              controller: widget.textEditingController,
            ),
          ),
        ),
      );
    } else {
      return SizedBox(
        height: widget.height,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: SizeConfig(context).getProportionatePadding(),
                    horizontal: 0),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(
                          SizeConfig(context).getProportionateroundess())),
                    ),
                    hintText: widget.initialText,
                  ),
                  controller: widget.initialText == null ? widget.textEditingController : null,
                  //onChanged: widget.onChanged,
                ),
              ),
            ]),
      );
    }
  }
}
