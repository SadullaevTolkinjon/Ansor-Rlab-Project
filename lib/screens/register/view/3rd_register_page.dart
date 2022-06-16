import 'dart:math';
import 'package:ancor_inc/core/constants/color_constants.dart';
import 'package:ancor_inc/core/constants/size_config.dart';
import 'package:ancor_inc/screens/register/cubit/register_cubit.dart';
import 'package:ancor_inc/screens/register/cubit/register_state.dart';
import 'package:ancor_inc/screens/register/view/components/text_widget.dart';
import 'package:ancor_inc/screens/widget/my_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:im_stepper/stepper.dart';
import 'package:pinput/pinput.dart';

class ThirdResgisterPage extends StatelessWidget {
  ThirdResgisterPage({Key? key}) : super(key: key);

  final controller = TextEditingController();
  final focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: getWidth(56.0),
      height: getHeight(56.0),
      textStyle: const TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );
    return Scaffold(
      backgroundColor: ColorConst.white,
      body: BlocProvider<RegisterCubit>(
        create: (context) => RegisterCubit(),
        child: BlocConsumer<RegisterCubit, RegisterState>(
          listener: (context, state) {},
          builder: (context, state) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: getHeight(35.0)),
                    child: NumberStepper(
                      direction: Axis.horizontal,
                      alignment: Alignment.topLeft,
                      lineColor: ColorConst.grey,
                      lineLength: 83.0,
                      numbers: const [1, 2, 3, 4],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TextWidget(text: "Qadam", color: ColorConst.grey),
                          TextWidget(text: "Qadam", color: ColorConst.grey),
                          TextWidget(text: "Qadam", color: ColorConst.grey),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: getHeight(30.0),
                        ),
                        child: Text("Telefon raqamini tasdiqlang",
                            textAlign: TextAlign.center,
                            style: TextStyleComp.regularStyle(32.0)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: getHeight(15.0),
                  ),
                  Column(
                    children: [
                      Container(
                        height: getHeight(40.0),
                        width: getWidth(300.0),
                        child: Text(
                          "Telefon raqamingizga yuborilgan parolni kiriting",
                          textAlign: TextAlign.center,
                          style: TextStyleComp.regularStyleGrey500(16.0),
                        ),
                      ),
                      SizedBox(
                        height: getHeight(10.0),
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'Parol bormadimi? ',
                          style: TextStyleComp.regularStBlack500(16.0),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Qayta yuborish',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: ColorConst.blue),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: getHeight(70.0)),
                        child: Pinput(
                          length: 5,
                          controller: controller,
                          focusNode: focusNode,
                          separator: Container(
                            height: getHeight(64.0),
                            width: getWidth(10.0),
                            color: Colors.white,
                          ),
                          defaultPinTheme: defaultPinTheme,
                          showCursor: true,
                          focusedPinTheme: defaultPinTheme.copyWith(
                            decoration: BoxDecoration(
                              color: ColorConst.grey,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
