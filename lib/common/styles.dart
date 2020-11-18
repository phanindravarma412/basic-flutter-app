import 'package:flutter/material.dart';

import 'package:whatsapp/common/colors.dart';

var kInputRectangleFieldDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  hintText: '',
  contentPadding: EdgeInsets.only(left: 25.0, top: 20.0, bottom: 20.0),
  hintStyle: kNormalTextStyle.copyWith(
    color: Colors.grey,
    fontSize: 18.0,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(16.0),
    ),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kPrimaryColor.withOpacity(0.2), width: 1.5),
    borderRadius: BorderRadius.all(Radius.circular(16.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kPrimaryColor, width: 3.0),
    borderRadius: BorderRadius.all(Radius.circular(16.0)),
  ),
);

const kNormalTextStyle = TextStyle(
  fontSize: 15.0,
  fontWeight: FontWeight.normal,
);

const kUserTitleStyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.bold,
);
