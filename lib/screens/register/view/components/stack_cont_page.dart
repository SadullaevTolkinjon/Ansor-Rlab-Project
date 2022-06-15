import 'package:ancor_inc/core/utils/size_config.dart';
import 'package:flutter/material.dart';

class StackContWidget extends StatelessWidget {
  final image;
  final text;
  final text1;
  final onTap;
  StackContWidget({
    Key? key,
    this.image,
    this.text,
    this.text1,
    this. onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Stack(
        children: [
          PhysicalModel(
            color: Colors.white,
            elevation: 5.0,
            shadowColor: Colors.grey.shade400,
            borderRadius: BorderRadius.circular(15.0),
            child: Container(
              height: getHeight(200),
              width: getWidth(170),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(16.0),
                ),
              ),
            ),
          ),
          Positioned(
            top: getHeight(20.0),
            left: getWidth(40.0),
            child: Column(
              children: [
                Container(
                  height: getHeight(80.0),
                  width: getWidth(80.0),
                  child: Image(
                    image: AssetImage(image ?? ""),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: getHeight(110.0),
            left: getWidth(50.0),
            child: Text(
              text ?? "",
              style: TextStyle(
                fontSize: getWidth(12.0),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Positioned(
            top: getHeight(130.0),
            left: getWidth(45.0),
            child: Text(
              text1 ?? "",
              style: TextStyle(
                  fontSize: getWidth(24.0), fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
      onTap: onTap,
    );
  }
}
