import 'package:ancor_inc/core/constants/color_constants.dart';
import 'package:ancor_inc/core/constants/size_config.dart';
import 'package:ancor_inc/screens/register/cubit/register_cubit.dart';
import 'package:ancor_inc/screens/register/cubit/register_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:im_stepper/stepper.dart';

class ThirdResgisterPage extends StatelessWidget {
  const ThirdResgisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<RegisterCubit>(
        create: (context) => RegisterCubit(),
        child: BlocConsumer<RegisterCubit, RegisterState>(
          listener: (context, state) {},
          builder: (context, state) {
            return SingleChildScrollView(
              child: Column(children: [
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
              ]),
            );
          },
        ),
      ),
    );
  }
}
