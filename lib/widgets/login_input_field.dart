import 'package:flutter/material.dart';

import 'package:whatsapp/common/colors.dart';
import 'package:whatsapp/common/styles.dart';

class LoginInputField extends StatelessWidget {
  LoginInputField({
    @required this.placeholder,
    this.hideText,
    // this.requiredLines,
    this.textInputType,
    // this.onChanged,
    // this.controller,
    this.validator,
  });
  final String placeholder;
  final bool hideText;
  // final int requiredLines;
  final TextInputType textInputType;
  // final Function onChanged;
  // final TextEditingController controller;
  final Function validator;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: Container(
        height: 70,
        child: TextFormField(
          keyboardType: textInputType ?? TextInputType.name,
          textAlign: TextAlign.start,
          validator: validator,
          // maxLines: requiredLines ?? 1,
          // onChanged: onChanged,
          // controller: controller,
          obscureText: hideText ?? false,
          style: kUserTitleStyle.copyWith(fontWeight: FontWeight.w400),
          decoration: kInputRectangleFieldDecoration.copyWith(
            hintText: "$placeholder",
            contentPadding: const EdgeInsets.only(
                top: 10.0, left: 10.0, bottom: 10.0, right: 20.0),
            border: OutlineInputBorder(),
            enabledBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: kPrimaryColor.withOpacity(0.2), width: 1.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: kPrimaryColor, width: 2.0),
            ),
          ),
        ),
      ),
    );
  }
}
