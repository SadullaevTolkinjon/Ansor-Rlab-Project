import 'package:ancor_inc/core/constants/color_constants.dart';
import 'package:ancor_inc/screens/widget/my_text_style.dart';
import 'package:flutter/material.dart';

class GlobElevatedWidget extends StatelessWidget {
  final onPressed;
  GlobElevatedWidget({
    Key? key, this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          side: BorderSide(
            width: 1.0,
            color: ColorConst.red,
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          minimumSize: Size(380, 50),
          primary: ColorConst.white,
          onPrimary: ColorConst.red,
        ),
        child: Text(
          "Jo'natish",
          style: TextStyleComp.regularStRed500(18.0),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
