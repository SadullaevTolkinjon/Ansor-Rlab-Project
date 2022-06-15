import 'package:ancor_inc/core/constants/color_constants.dart';
import 'package:ancor_inc/core/constants/size_config.dart';
import 'package:flutter/material.dart';

class ContainerButton extends StatelessWidget {
  final top;
  final bottom;
  final name;
  final onTap;
  const ContainerButton(
      {Key? key, this.name, this.bottom, this.onTap, this.top, textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      child: Center(
        child: Container(
          margin: EdgeInsets.only(
            top: top ?? 0,
            bottom: bottom ?? 0,
          ),
          height: getHeight(42),
          width: getWidth(343),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(8.0)),
          ),
          child: Center(
            child: Text(
              name ?? " ",
              style: TextStyle(
                color: Colors.white,
                fontSize: getHeight(18),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
      onTap: onTap ?? () {},
    );
  }
}
