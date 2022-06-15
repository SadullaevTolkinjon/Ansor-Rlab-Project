import 'package:ancor_inc/core/constants/color_constants.dart';
import 'package:ancor_inc/core/constants/size_config.dart';
import 'package:ancor_inc/screens/register/cubit/register_cubit.dart';
import 'package:ancor_inc/screens/register/cubit/register_state.dart';
import 'package:ancor_inc/screens/register/view/2nd_register_page.dart';
import 'package:ancor_inc/screens/register/view/components/stack_cont_page.dart';
import 'package:ancor_inc/screens/register/view/components/text_widget.dart';
import 'package:ancor_inc/screens/signIn/view/sign_in_page.dart';
import 'package:ancor_inc/screens/widget/my_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:im_stepper/stepper.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({Key? key}) : super(key: key);

  int currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocProvider<RegisterCubit>(
        create: (context) => RegisterCubit(),
        child: BlocConsumer<RegisterCubit, RegisterState>(
          listener: (context, state) {},
          builder: (context, state) {
            return Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: getHeight(35.0)),
                  child: NumberStepper(
                    direction: Axis.horizontal,
                    alignment: Alignment.topLeft,
                    lineColor: ColorConst.grey,
                    lineLength: 83.0,
                    numbers: const [1, 2, 3],
                  ),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Qadam",
                            style: TextStyleComp.regularStyleGrey500(14.0)),
                        Text("Qadam",
                            style: TextStyleComp.regularStyleGrey500(14.0)),
                        Text("Qadam",
                            style: TextStyleComp.regularStyleGrey500(14.0)),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: getHeight(30.0)),
                      child: Text("Mening Yoshim",
                          style: TextStyleComp.regularStyle(32.0)),
                    ),
                  ],
                ),
                SizedBox(
                  height: getHeight(130.0),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    StackContWidget(
                      image: "assets/images/kichik.png",
                      text: "18 yoshdan",
                      text1: "KICHIK",
                      onTap: () {
                        Navigator.pushAndRemoveUntil(context,
                            MaterialPageRoute(builder: (context) {
                          return SecondRegPage();
                        }), (route) => false);
                      },
                    ),
                    StackContWidget(
                      image: "assets/images/katta.png",
                      text: "18 yoshdan",
                      text1: "KATTA",
                      onTap: () {
                        Navigator.pushAndRemoveUntil(context,
                            MaterialPageRoute(builder: (context) {
                          return SecondRegPage();
                        }), (route) => false);
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: getHeight(200),
                ),
                Divider(
                  indent: getWidth(16.0),
                  endIndent: getWidth(16.0),
                  color: ColorConst.black,
                ),
                Text("Allaqachon ro’yhatdan o’tganmisiz?",
                    style: TextStyleComp.regularStBlack500(14.0)),
                SizedBox(
                  height: getWidth(10.0),
                ),
                InkWell(
                  child:
                      Text("Kirish", style: TextStyleComp.regularStRed500(16.0)),
                  onTap: () {
                    Navigator.pushAndRemoveUntil(context,
                        MaterialPageRoute(builder: (context) {
                      return const SignInPage();
                    }), (route) => false);
                  },
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
