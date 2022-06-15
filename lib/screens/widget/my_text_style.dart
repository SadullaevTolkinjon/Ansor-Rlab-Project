import 'package:ancor_inc/core/constants/color_constants.dart';
import 'package:flutter/material.dart';

class TextStyleComp {
  static TextStyle regularStyle(double size) {
    return TextStyle(
      color: ColorConst.black,
      fontSize: size,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle regularStyleGrey600(double size) {
    return TextStyle(
      color: ColorConst.grey,
      fontSize: size,
      fontWeight: FontWeight.w600,
    );
  }
  static TextStyle regularStyleGrey500(double size) {
    return TextStyle(
      color: ColorConst.grey,
      fontSize: size,
      fontWeight: FontWeight.w500,
    );
  }
  static TextStyle regularWhite400(double size) {
    return TextStyle(
      color: ColorConst.white,
      fontSize: size,
      fontWeight: FontWeight.w400,
    );
  }
  static TextStyle regularStBlack500(double size) {
    return TextStyle(
      color: ColorConst.black,
      fontSize: size,
      fontWeight: FontWeight.w400,
    );
  }
  static TextStyle regularStRed500(double size) {
    return TextStyle(
      color: ColorConst.red,
      fontSize: size,
      fontWeight: FontWeight.w400,
    );
  }
}



