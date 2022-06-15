import 'package:ancor_inc/core/constants/size_config.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class IntlPhoneWidget extends StatelessWidget {
  const IntlPhoneWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getWidth(16.0),
        vertical: getHeight(12.0),
      ),
      child: IntlPhoneField(
        decoration: const InputDecoration(
          labelText: 'Phone Number',
          border: OutlineInputBorder(
            borderSide: BorderSide(),
            borderRadius: BorderRadius.all(
              Radius.circular(8.0),
            ),
          ),
        ),
        onChanged: (phone) {
          print(phone.completeNumber);
        },
        onCountryChanged: (country) {
          print('Country changed to: ' + country.name);
        },
      ),
    );
  }
}
