import 'package:ancor_inc/core/constants/color_constants.dart';
import 'package:ancor_inc/core/utils/size_config.dart';
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final text;
  final fonstsize;
  final color;
  final fontweight;
  const TextWidget({Key? key, this.text, this.fonstsize, this.color, this.fontweight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? "",
      style: TextStyle(
        color: color,
        fontSize: fonstsize,
        fontWeight: fontweight,
      ),
    );
  }
}
