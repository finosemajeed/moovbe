
import 'package:flutter/material.dart';
import 'package:moovbe/core/utils/color_config.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField({
    super.key,
    required this.hintText,
  });
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          fillColor: textFieldColor,
        ),
      ),
    );
  }
}
