import 'package:ancor_inc/core/constants/color_constants.dart';
import 'package:ancor_inc/core/utils/size_config.dart';
import 'package:ancor_inc/screens/home_page/view/components/container_button.dart';
import 'package:ancor_inc/screens/home_page/view/components/decoration_componenets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: getWidth(16),vertical: getHeight(48)),
        child: Column(
          children: [
            Container(
              height: getHeight(72),
              width: getWidth(343),
              decoration: BoxDecoration(
                borderRadius: ContainerDecoration.borderRadius20,
                color: ColorConst.circleBlue
              ),
            ),
          ],
        ),
      ),
    );
  }
}