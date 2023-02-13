import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.label,
    required this.buttonColor,
    required this.labelColor,
    required this.onPress,
  });
  final String label;
  final Color buttonColor;
  final Color labelColor;
  final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: ElevatedButton(
          onPressed: onPress,
          style: ElevatedButton.styleFrom(
            backgroundColor: buttonColor,
          ),
          child: Text(
            label,
            style: TextStyle(
              color: labelColor,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
