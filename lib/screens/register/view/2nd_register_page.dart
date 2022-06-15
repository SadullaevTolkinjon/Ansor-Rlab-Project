import 'package:ancor_inc/core/constants/color_constants.dart';
import 'package:ancor_inc/core/constants/size_config.dart';
import 'package:ancor_inc/main.dart';
import 'package:ancor_inc/screens/register/cubit/register_cubit.dart';
import 'package:ancor_inc/screens/register/cubit/register_state.dart';
import 'package:ancor_inc/screens/register/view/components/elevated_button_widget.dart';
import 'package:ancor_inc/screens/register/view/components/intl_phone_widget.dart';
import 'package:ancor_inc/screens/register/view/components/text_widget.dart';
import 'package:ancor_inc/screens/register/view/components/tff_form_field_widget.dart';
import 'package:ancor_inc/screens/widget/elevated_button_widget.dart';
import 'package:ancor_inc/screens/widget/my_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:im_stepper/stepper.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SecondRegPage extends StatelessWidget {
  SecondRegPage({Key? key}) : super(key: key);

  final TextEditingController textController = TextEditingController();
  final TextEditingController editingTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                            top: getHeight(30.0), left: getWidth(65.0)),
                        child: Text(
                          "Ro’yhatdan o’tish",
                          style: TextStyleComp.regularStyle(32.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: getWidth(16.0), top: getHeight(32.0)),
                        child: Text(
                          "Ism-Familiyangiz",
                          style: TextStyleComp.regularStBlack500(14.0),
                        ),
                      ),
                      TextFormFieldWidget(
                        textController: textController,
                        type: TextInputType.text,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: getWidth(16.0),
                          top: getHeight(10.0),
                        ),
                        child: Text(
                          "Telefon Raqamingiz",
                          style: TextStyleComp.regularStBlack500(14.0),
                        ),
                      ),
                      const IntlPhoneWidget(),
                      Padding(
                        padding: EdgeInsets.only(
                          left: getWidth(16.0),
                          top: getHeight(5.0),
                        ),
                        child: Text(
                          "Parol",
                          style: TextStyleComp.regularStBlack500(14.0),
                        ),
                      ),
                      TextFormFieldWidget(
                        textController: editingTextController,
                        type: TextInputType.number,
                      ),
                      SizedBox(
                        height: getHeight(150.0),
                      ),
                      GlobElevatedWidget(),
                      SizedBox(
                        height: getHeight(15.0),
                      ),
                      const ElevatedButtonWidget(),
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
