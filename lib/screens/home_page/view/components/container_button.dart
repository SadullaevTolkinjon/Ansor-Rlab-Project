import 'package:ancor_inc/core/constants/color_constants.dart';
import 'package:ancor_inc/core/utils/size_config.dart';
import 'package:ancor_inc/screens/home_page/view/components/decoration_componenets.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class ContainerDars extends StatelessWidget {
  const ContainerDars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: getHeight(176),
        width: getWidth(343),
        decoration: BoxDecoration(
          borderRadius: ContainerDecoration.borderRadius20,
          color: ColorConst.red,
        ),
      ),
    );
  }
}
