import 'package:ancor_inc/core/constants/color_constants.dart';
import 'package:ancor_inc/core/constants/size_config.dart';
import 'package:ancor_inc/core/data/local_data/vaqtinchalik/image_page.dart';
import 'package:ancor_inc/main.dart';
import 'package:ancor_inc/screens/home_page/view/components/container_button.dart';

import 'package:ancor_inc/screens/register/view/register_page.dart';
import 'package:ancor_inc/screens/widget/my_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);

  int indexOfImage = 0;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: ColorConst.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: getHeight(55.0),
            ),
            child: TextButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(context,
                    MaterialPageRoute(builder: (context) {
                  return RegisterPage();
                }), (route) => false);
              },
              child: Text(
                "Skip",
                style: TextStyleComp.regularStyleGrey500(
                  getHeight(16.0),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: getHeight(30.0),
              left: getWidth(20.0),
            ),
            child: Column(
              children: [
                Container(
                  height: getHeight(343),
                  width: getWidth(343),
                  child: images[indexOfImage],
                ),
                Text(
                  text[indexOfImage].toString(),
                  textAlign: TextAlign.center,
                  style: TextStyleComp.regularStyle(getWidth(32.0)),
                ),
                SizedBox(
                  height: getHeight(10.0),
                ),
                Center(
                  child: Container(
                    height: getHeight(47.0),
                    width: getWidth(343.0),
                    child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                      textAlign: TextAlign.center,
                      style: TextStyleComp.regularStBlack500(
                        getWidth(14.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: getHeight(25.0),
          ),
          Center(
            child: SmoothPageIndicator(
              controller: controller,
              count: images.length,
              effect: WormEffect(
                activeDotColor: ColorConst.red,
                dotHeight: 16,
                dotWidth: 16,
                type: WormType.thin,
                strokeWidth: 5,
              ),
            ),
          ),
          SizedBox(
            height: getHeight(80.0),
          ),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: getWidth(155),
                  vertical: getHeight(10),
                ),
              ),
              onPressed: () {
                changeImage();
              },
              child: Text(
                "Next",
                style: TextStyle(
                  fontSize: getWidth(16.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  changeImage() {
    indexOfImage += 1;

    setState(() {});
  }
}
