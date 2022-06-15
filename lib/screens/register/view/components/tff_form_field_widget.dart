import 'package:ancor_inc/core/utils/size_config.dart';
import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  final controller;
  final type;
  final text;
  
  TextFormFieldWidget({
    Key? key,
    this.controller,
    this.type,
    this.text,
     required this.textController,
  }) : super(key: key);

  final TextEditingController textController;
  final TextEditingController editingTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getWidth(16.0), vertical: getHeight(5.0)),
      child: TextFormField(
        keyboardType: type,
        controller: controller,
        decoration: const InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
            ),
            hintText: ""),
      ),
    );
  }
}
