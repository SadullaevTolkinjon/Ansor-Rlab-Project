import 'package:ancor_inc/core/constants/color_constants.dart';
import 'package:ancor_inc/core/constants/size_config.dart';
import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            side: BorderSide(
              width: 1.0,
              color: ColorConst.blue,
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0)),
            minimumSize: Size(0, 45),
            maximumSize: Size(175, 45),
            primary: ColorConst.white,
            onPrimary: ColorConst.black,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: getHeight(25.0),
                  width: getWidth(25.0),
                  child: const Image(
                      image: AssetImage(
                          "assets/images/google.png"))),
              const Text("Google"),
            ],
          ),
          onPressed: () {},
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            side: BorderSide(
              width: 1.0,
              color: ColorConst.blue,
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0)),
            minimumSize: Size(0, 45),
            maximumSize: Size(175, 45),
            primary: ColorConst.white,
            onPrimary: ColorConst.black,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: getHeight(30.0),
                  width: getWidth(30.0),
                  child: const Image(
                      image: AssetImage(
                          "assets/images/Facebook.png"))),
              const Text("Facebook"),
            ],
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
