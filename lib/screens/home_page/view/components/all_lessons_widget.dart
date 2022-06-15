import 'package:ancor_inc/core/constants/color_constants.dart';
import 'package:ancor_inc/core/utils/size_config.dart';
import 'package:ancor_inc/screens/home_page/view/components/decoration_componenets.dart';
import 'package:ancor_inc/screens/widget/my_text_style.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AllLesson extends StatelessWidget {
  const AllLesson({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getHeight(200),
      child: CarouselSlider.builder(
        itemCount: 15,
        itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
          return Container(
            margin: EdgeInsets.symmetric(
                vertical: getHeight(16), horizontal: getWidth(4)),
            height: getHeight(168),
            width: getWidth(311),
            decoration: BoxDecoration(
                borderRadius: ContainerDecoration.borderRadius20,
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: CachedNetworkImageProvider(
                        "https://images.livemint.com/img/2021/08/31/1600x900/ForrestLibloomberg_1630373973636_1630373983808.jpg"))),
            child: Stack(
              children: [
                Container(
                  height: getHeight(168),
                  width: getWidth(311),
                  decoration: BoxDecoration(
                    borderRadius: ContainerDecoration.borderRadius20,
                    color: ColorConst.circleBlue.withOpacity(0.7),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(getHeight(16)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("${itemIndex + 1} - kun",
                          style: TextStyleComp.regularWhite400(getHeight(12))),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: getHeight(31),
                            width: getHeight(31),
                            child: Image.asset("assets/images/Exclude.png"),
                          ),
                        ],
                      ),
                      Text(
                        "Countable and uncountable nouns",
                        style: TextStyleComp.regularWhite600(getHeight(16)),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        options: CarouselOptions(),
      ),
    );
  }
}
